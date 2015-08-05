class CommentsController < ApplicationController
  before_action :set_announcemement
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = @announcement.comments.all.order("created_at DESC")
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = @announcement.comments.build
    @comment.parent_id = params[:parent_id]
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = @announcement.comments.build(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @announcement, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: [@announcement, @comment] }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @announcement, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: [@announcement, @comment] }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to announcement_comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_announcemement
    @announcement = Announcement.find(params[:announcement_id])
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = @announcement.comments.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:comment, :announcement_id, :parent_id)
    end
end
