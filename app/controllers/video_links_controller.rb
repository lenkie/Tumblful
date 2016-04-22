class VideoLinksController < ApplicationController
    
    def index
        @video_links = VideoLink.all
    end
    
    def show
        @video_link = VideoLink.find(params[:id])
    end
    
    # GET (/new)
    def new
        @video_link = VideoLink.new
    end
    
    # POST
    def create
        @video_link = VideoLink.new(url: params[:video_link][:url], title: params[:video_link][:title])
        if @video_link.save
            redirect_to video_links_path
        else
            @errors = @video_link.errors
            render :new
        end
    end
    
    # GET (/id/edit)
    def edit
        @video_link = VideoLink.find(params[:id])
    end
    
    # PUT or PATCH
    def update
        @video_link = VideoLink.find(params[:id])
        if @video_link.update(video_link_params)
             redirect_to video_links_path
        else
            @errors = @video_link.errors
             render :edit
        end
    end
    
    # DELETE
    def destroy
        @video_link = VideoLink.find(params[:id])
        @video_link.destroy
        redirect_to video_links_path
    end
     
  private
    def video_link_params
         params.require(:video_link).permit(:url, :title)
    end
    
    
end
