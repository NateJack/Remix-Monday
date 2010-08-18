class ApplicationController < ActionController::Base
  
  helper :all
  protect_from_forgery
  
  protected
  
  def check_iphone
    if not request.parameters[:format] == 'vote'
      if request.env["HTTP_USER_AGENT"] && request.env["HTTP_USER_AGENT"][/(iPhone|iPod)/]
        request.parameters[:format] = 'iphone'
      end
    end
  end
  
  def authentication_succeeded
    flash[:notice] = "You have logged in successfully."
    redirect_to root_path
  end
  
  def access_denied
    respond_to do |format|
      format.html {
        store_location
        redirect_to login_path
      }
      format.js{ render :js => "top.location.href = '/login';" }
    end
  end
  
end
