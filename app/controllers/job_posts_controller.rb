class JobPostsController < ApplicationController
  before_action :set_job_post, only: :show

  # GET /job_posts
  # GET /job_posts.json
  def index
    @job_posts = JobPost.all
  end

  # GET /job_posts/1
  # GET /job_posts/1.json
  def show
  end

  # POST /job_posts
  # POST /job_posts.json
  def create
    @job_post = JobPost.new(job_post_params)

    if @job_post.save
      render :show, status: :created, location: @job_post
    else
      render json: @job_post.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_post
      @job_post = JobPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_post_params
      params.require(:job_post).permit(:title, :description, :company_name, :company_url, :join_type)
    end
end
