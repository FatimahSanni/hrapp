class DisciplinaryCasesController < ApplicationController
  before_action :set_disciplinary_case, only: [:show, :edit, :update, :destroy]

  # GET /disciplinary_cases
  # GET /disciplinary_cases.json
  def index
    @disciplinary_cases = DisciplinaryCase.all
  end

  # GET /disciplinary_cases/1
  # GET /disciplinary_cases/1.json
  def show
  end

  # GET /disciplinary_cases/new
  def new
    @disciplinary_case = DisciplinaryCase.new
  end

  # GET /disciplinary_cases/1/edit
  def edit
  end

  # POST /disciplinary_cases
  # POST /disciplinary_cases.json
  def create
    @disciplinary_case = DisciplinaryCase.new(disciplinary_case_params)

    respond_to do |format|
      if @disciplinary_case.save
        format.html { redirect_to @disciplinary_case, notice: 'Disciplinary case was successfully created.' }
        format.json { render :show, status: :created, location: @disciplinary_case }
      else
        format.html { render :new }
        format.json { render json: @disciplinary_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disciplinary_cases/1
  # PATCH/PUT /disciplinary_cases/1.json
  def update
    respond_to do |format|
      if @disciplinary_case.update(disciplinary_case_params)
        format.html { redirect_to @disciplinary_case, notice: 'Disciplinary case was successfully updated.' }
        format.json { render :show, status: :ok, location: @disciplinary_case }
      else
        format.html { render :edit }
        format.json { render json: @disciplinary_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disciplinary_cases/1
  # DELETE /disciplinary_cases/1.json
  def destroy
    @disciplinary_case.destroy
    respond_to do |format|
      format.html { redirect_to disciplinary_cases_url, notice: 'Disciplinary case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disciplinary_case
      @disciplinary_case = DisciplinaryCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disciplinary_case_params
      params.require(:disciplinary_case).permit(:staff_id, :reason, :report, :disciplinary_action_id, :close)
    end
  end
