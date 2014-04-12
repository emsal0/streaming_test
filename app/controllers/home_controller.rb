class HomeController < ApplicationController

  def index
  	@admin = Admin.new
  	@video = Video.find(1)
  end

  def changevid
  	if session[:user]
  		Video.find(1).update(source: params[:src])
  	else
  		return false
  	end
  	redirect_to :root
  end

end
