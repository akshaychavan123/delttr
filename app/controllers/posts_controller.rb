class PostsController < ApplicationController
    def index
      @posts = Post.all
      render json: @posts
    end

    def show 
      @post = Post.find(params[:id])
      render json: @post
    end

    def create
      @post = Post.new(post_params)
      @post.save
        render json: {
        data: ActiveModelSerializers::SerializableResource.new(@post, serializer: PostSerializer),
        message: ['Activity logs created successfully'],
        status: 200,
        type: 'Success'
      }
    end
    private

    def post_params
      params.require(:post).permit(:name , :title , :desc  , comments_attributes: [:id , :review , :rating])
    end

end
