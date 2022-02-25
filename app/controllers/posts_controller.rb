class PostsController < ApplicationController

    def new
        @post = Post.new
        @place = Place.find(params["name"])
        @post.name = @name
    end

    def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/places/#{@post.name}"
    end

end
