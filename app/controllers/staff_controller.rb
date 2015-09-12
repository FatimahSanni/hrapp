class StaffController < ApplicationController
  before_action :set_staff, only: [:show, :edit, :update, :destroy]
  before_action :profile_owner!, only: [:show, :edit, :update, :destroy]

  # GET /staff
  # GET /staff.json
  def index
    @staff = Staff.order(:name).page(params[:page])
  end

  # GET /staff/1
  # GET /staff/1.json
  def show
  end

  # GET /staff/new
  def new
    @staff = Staff.new
    # authorize @staff
  end

  # GET /staff/1/edit
  def edit
  end

  # POST /staff
  # POST /staff.json
  def create

    @staff = Staff.new(staff_params)
    authorize @staff
    respond_to do |format|
      if @staff.save
        UserMailer.welcome_email(@staff.user).deliver_now
        format.html { redirect_to @staff, notice: 'Staff was successfully created.' }
        format.json { render :show, status: :created, location: @staff }
      else
        format.html { render :new }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff/1
  # PATCH/PUT /staff/1.json
  def update
    authorize @staff
    respond_to do |format|
      if @staff.update(staff_params)
        format.html { redirect_to @staff, notice: 'Staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @staff }
      else
        format.html { render :edit }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff/1
  # DELETE /staff/1.json
  def destroy
    @staff.destroy
    respond_to do |format|
      format.html { redirect_to staff_index_url, notice: 'Staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  

  def profile_owner!
    authenticate_user!
    if !(@staff.user_id == current_user.id) and !(current_user.has_role? :admin)
      redirect_to staff_index_path
      flash[:alert] = "You do not have enough permissions to do this"
    end
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = Staff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_params
      params.require(:staff).permit(:confirmed, :hire_date, :avatar, :staff_status, :name, :dob, :gender, :emergency_phone, :emergency_name, :emergency_address, :marital_status, :relationship, :address, :mobile, :email, dependents_attributes: [:id, :name, :relationship, :dob, :_destroy], jobs_attributes: [:id, :title, :note, :specification, :date, :_destroy])
    end
end
