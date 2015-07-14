class LeaveRulesController < ApplicationController
  before_action :set_leave_rule, only: [:show, :edit, :update, :destroy]

  # GET /leave_rules
  # GET /leave_rules.json
  def index
    @leave_rules = LeaveRule.all
  end

  # GET /leave_rules/1
  # GET /leave_rules/1.json
  def show
  end

  # GET /leave_rules/new
  def new
    @leave_rule = LeaveRule.new
  end

  # GET /leave_rules/1/edit
  def edit
  end

  # POST /leave_rules
  # POST /leave_rules.json
  def create
    @leave_rule = LeaveRule.new(leave_rule_params)

    respond_to do |format|
      if @leave_rule.save
        format.html { redirect_to @leave_rule, notice: 'Leave rule was successfully created.' }
        format.json { render :show, status: :created, location: @leave_rule }
      else
        format.html { render :new }
        format.json { render json: @leave_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_rules/1
  # PATCH/PUT /leave_rules/1.json
  def update
    respond_to do |format|
      if @leave_rule.update(leave_rule_params)
        format.html { redirect_to @leave_rule, notice: 'Leave rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @leave_rule }
      else
        format.html { render :edit }
        format.json { render json: @leave_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_rules/1
  # DELETE /leave_rules/1.json
  def destroy
    @leave_rule.destroy
    respond_to do |format|
      format.html { redirect_to leave_rules_url, notice: 'Leave rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_rule
      @leave_rule = LeaveRule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leave_rule_params
      params.require(:leave_rule).permit(:job_category_id, :days, :employment_type_id)
    end
end
