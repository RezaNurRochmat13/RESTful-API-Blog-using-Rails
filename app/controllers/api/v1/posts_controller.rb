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
        joins("JOIN users ON posts.user_id=users.id").find(params[:id])

        render json: {
            data: detailPostsByUserId
        }
    end
end
