class DisciplinaryActionsController < ApplicationController
  before_action :set_disciplinary_action, only: [:show, :edit, :update, :destroy]

  # GET /disciplinary_actions
  # GET /disciplinary_actions.json
  def index
    @disciplinary_actions = DisciplinaryAction.all
  end

  # GET /disciplinary_actions/1
  # GET /disciplinary_actions/1.json
  def show
  end

  # GET /disciplinary_actions/new
  def new
    @disciplinary_action = DisciplinaryAction.new
  end

  # GET /disciplinary_actions/1/edit
  def edit
  end

  # POST /disciplinary_actions
  # POST /disciplinary_actions.json
  def create
    @disciplinary_action = DisciplinaryAction.new(disciplinary_action_params)

    respond_to do |format|
      if @disciplinary_action.save
        format.html { redirect_to disciplinary_actions_url, notice: 'Disciplinary action was successfully created.' }
        format.json { render :index, status: :created, location: disciplinary_actions_url }
      else
        format.html { render :new }
        format.json { render json: @disciplinary_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disciplinary_actions/1
  # PATCH/PUT /disciplinary_actions/1.json
  def update
    respond_to do |format|
      if @disciplinary_action.update(disciplinary_action_params)
        format.html { redirect_to disciplinary_actions_url, notice: 'Disciplinary action was successfully updated.' }
        format.json { render :index, status: :ok, location: disciplinary_actions_url }
      else
        format.html { render :edit }
        format.json { render json: @disciplinary_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disciplinary_actions/1
  # DELETE /disciplinary_actions/1.json
  def destroy
    @disciplinary_action.destroy
    respond_to do |format|
      format.html { redirect_to disciplinary_actions_url, notice: 'Disciplinary action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disciplinary_action
      @disciplinary_action = DisciplinaryAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disciplinary_action_params
      params.require(:disciplinary_action).permit(:name)
    end
end
