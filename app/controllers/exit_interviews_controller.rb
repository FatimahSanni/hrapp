class ExitInterviewsController < ApplicationController
  before_action :set_exit_interview, only: [:show, :edit, :update, :destroy]

  # GET /exit_interviews
  # GET /exit_interviews.json
  def index
    @exit_interviews = ExitInterview.all
  end

  # GET /exit_interviews/1
  # GET /exit_interviews/1.json
  def show
  end

  # GET /exit_interviews/new
  def new
    @exit_interview = ExitInterview.new
  end

  # GET /exit_interviews/1/edit
  def edit
  end

  # POST /exit_interviews
  # POST /exit_interviews.json
  def create
    @exit_interview = ExitInterview.new(exit_interview_params)

    respond_to do |format|
      if @exit_interview.save
        format.html { redirect_to @exit_interview, notice: 'Exit interview was successfully created.' }
        format.json { render :show, status: :created, location: @exit_interview }
      else
        format.html { render :new }
        format.json { render json: @exit_interview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exit_interviews/1
  # PATCH/PUT /exit_interviews/1.json
  def update
    respond_to do |format|
      if @exit_interview.update(exit_interview_params)
        format.html { redirect_to @exit_interview, notice: 'Exit interview was successfully updated.' }
        format.json { render :show, status: :ok, location: @exit_interview }
      else
        format.html { render :edit }
        format.json { render json: @exit_interview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exit_interviews/1
  # DELETE /exit_interviews/1.json
  def destroy
    @exit_interview.destroy
    respond_to do |format|
      format.html { redirect_to exit_interviews_url, notice: 'Exit interview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exit_interview
      @exit_interview = ExitInterview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exit_interview_params
      params.require(:exit_interview).permit(:job_challenge, :opportunities, :workload, :resources, :colleagues, :skills, :training, :staff_id, :higher_pay, :better_benefits, :better_career, :life_balance, :career_change, :closer, :employee_conflict, :manager_conflict, :family, :company_instability, :other, :comment, :note, :tag_list, :salary, :timely_wage, :benefit, :work_life_balance, :benefit_comment, :orientation, :positive_environment, :adequate_equipment, :get_on, :sufficient_staff, :efficient_company, :internal_communication, :no_bullying, :discrimination, :company_comment, :sufficient_knowledge, :experience, :open, :acknowledge_achievements, :recognise_contributions, :promote_development, :constructive_feedback, :clear_communication, :professional_relationship, :supervisor_comment, :equal_treatment, :discuss_issues, :encourage_feedback, :consistent_policies, :provide_recognition, :gave_development_opportunities, :gave_feedback, :clear_decision, :management_comment)
    end
end
