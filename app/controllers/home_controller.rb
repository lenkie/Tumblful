class HomeController < ApplicationController

  # GET /
  #
  # This action is the called when someone who is not logged in trys to access the
  # root_path of the site. All we do is display some forms and static data, so no
  # code is actually required here.
  #
  def index
    if current_user
      redirect_to follows_url
    end
  end
  
  def stream
    
  end 
end
