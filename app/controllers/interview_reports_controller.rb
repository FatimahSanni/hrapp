class InterviewReportsController < ApplicationController
  before_action :set_interview_report, only: [:show, :edit, :update, :destroy]

  # GET /interview_reports
  # GET /interview_reports.json
  def index
    @interview_reports = InterviewReport.all
  end

  # GET /interview_reports/1
  # GET /interview_reports/1.json
  def show
  end

  # GET /interview_reports/new
  def new
    @interview_report = InterviewReport.new
  end

  # GET /interview_reports/1/edit
  def edit
  end

  # POST /interview_reports
  # POST /interview_reports.json
  def create
    @interview_report = InterviewReport.new(interview_report_params)

    respond_to do |format|
      if @interview_report.save
        format.html { redirect_to @interview_report, notice: 'Interview report was successfully created.' }
        format.json { render :show, status: :created, location: @interview_report }
      else
        format.html { render :new }
        format.json { render json: @interview_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interview_reports/1
  # PATCH/PUT /interview_reports/1.json
  def update
    respond_to do |format|
      if @interview_report.update(interview_report_params)
        format.html { redirect_to @interview_report, notice: 'Interview report was successfully updated.' }
        format.json { render :show, status: :ok, location: @interview_report }
      else
        format.html { render :edit }
        format.json { render json: @interview_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interview_reports/1
  # DELETE /interview_reports/1.json
  def destroy
    @interview_report.destroy
    respond_to do |format|
      format.html { redirect_to interview_reports_url, notice: 'Interview report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interview_report
      @interview_report = InterviewReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interview_report_params
      params.require(:interview_report).permit(:name, :education, :work, :job_knowledge, :communication, :initiative, :enthusiasm, :company_knowledge, :note)
    end
end
