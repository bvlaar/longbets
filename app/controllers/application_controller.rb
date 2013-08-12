class ApplicationController < ActionController::Base
  protect_from_forgery

  def check_privileges!
  	redirect_to "/", alert: 'You don\'t have permission to view the requested page' unless current_admin
  end 

end
