class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :admin?

  protected
  	def admin?
  		true
  	end

  	def authorize
  		unless admin?
	  		flash[:error] = "Unauthorized access"
	  		redirect_to root_path
	  		false
	  	end
  	end
end
