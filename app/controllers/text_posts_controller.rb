class TextPostsController < ApplicationController
    def index
        @text_posts = TextPost.all
    end
end
