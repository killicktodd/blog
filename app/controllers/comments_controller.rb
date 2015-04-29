class CommentsController < ApplicationController
  
  def new
  	# find the post
  	@post = Post.find(params[:post_id])
  	# Assign a new empty comment to @comment
  	@comment = @post.comments.new
  end

  def create
  	# find the post
  	@post = Post.find(params[:post_id])  
	# Assign a new comment with form data to @comment
	@comment = @post.comments.new(comment_params)
	if @comment.save
		flash[:success] = "Thanks for commenting on #{@post.title}"
		redirect_to @post
  		else
  		flash[:error] = t :error_msg
  		render :new
  	end
  end

  def edit
  	# find the post
  	# Assign the comment to @comment
  end

  def update
  	# find the post
  	# Assign the comment to @comment
  	# If it updates with DB data 
  	# Flash success and redirect to show post
  	# Else
  	# Flash error and render 
  end

  def destroy
  	# find the post
  	# Delete comment
  	# Redirect to show
  end

  # Whitelist the data from the form
  private

  def comment_params
  	params.require(:comment).permit(:body, :commenter)  	
  end

end
