class Api::V1::PostsController < ApplicationController
    protect_from_forgery

    def showAllPosts
        allPosts = Post.select('posts.id, posts.posts_name,
        posts.description_posts, users.name').
        joins("JOIN users ON posts.user_id=users.id").all
        countPosts = Post.count

        render json: {
            total: countPosts,
            count: countPosts,
            data: allPosts
        }, status: 200
    end

    def showPostByUserId
        detailPostsByUserId = Post.select('posts.id, posts.posts_name,
        posts.description_posts, users.name').
        joins("JOIN users ON posts.user_id=users.id").where(user_id: params[:user_id])

        render json: {
            data: detailPostsByUserId
        }

        rescue ActiveRecord::RecordNotFound => e
            render json: {
            error: e.to_s
            }, status: :ok
    end

    def showDetailPosts
        detailPostsById = Post.select('posts.id, posts.posts_name,
        posts.description_posts, users.name').
        joins("JOIN users ON posts.user_id=users.id").find(params[:posts_id])

        render json: {
            data: detailPostsById
        }, status: 200

    rescue ActiveRecord::RecordNotFound => e
        render json: {
        error: e.to_s
        }, status: :ok
        
    end

    def createNewPosts
        createNewPostPayload = Post.create(post_param)

        if createNewPostPayload.save!
            render json: {
                "message": "Posts created successfully",
                "created": post_param
            }, status: 200
        else
            render json:{
                "message": "Error has returned"
            }
        end

    end

    private
    def post_param
        params.require(:post).permit(:posts_name, :description_posts, :user_id)
    end
end
