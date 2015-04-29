
class PostsController < ApplicationController
  before_action :find_post, except: [:index, :new, :create]

  def index
  	if params[:author].present?
      @posts = Post.from_param(params[:author]).page params[:page]
    else  
    	@posts = Post.all.page params[:page]
    end
    @quotes = @posts.pluck(:pull_quote)
  end

  def show
  	# assign one post to @post -> refactord in the before_action
    # assign all comments for the post to @comments
    @comments = @post.comments.all
  	# render the show template
  end

  def new
  	# assign a new empty post instance to @post
    @post = Post.new
  	# render new template  
  end

  def create
  	# assing a new post containing date from the form
    @post = Post.create(post_params)
  	if @post.save 
      flash[:success] = "Successfully added a post"
      redirect_to @post
    else
      flash[:error] = t(:error_msg)
      render :new
    end
  end
 
  def edit
  	# assign a post we want to edit to @post
  	# render the edit template
  end

  def update
  	# assign the post we want to edit to @post
  	if @post.update(post_params)
      flash[:success] = "Successfully updated a post"
      redirect_to @post
    else
      flash[:error] = t(:error_msg)
      render :edit
    end
  	# else render the form again
  end

  def destroy
  	# find the post and then delete the post
    @post.destroy
    #say it worked
    flash[:success] = "#{@post.title} was removed"
  	# redirect to the homepage
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :publication, :published_at, :url, :author, :body, :pull_quote)
  end
  def find_post
    @post=Post.find(params[:id])
  end
end
