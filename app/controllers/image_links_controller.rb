class ImageLinksController < ApplicationController
    def index
        @image_links = ImageLink.all
    end
end
