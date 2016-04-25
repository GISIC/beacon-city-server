module API
	class ApiApplicationController < ActionController::Base
		# Prevent CSRF attacks by raising an exception.
		# For APIs, you may want to use :null_session instead.
		protect_from_forgery with: :null_session

		def render_record_not_found
    		render :json => {:status_code => 404, :message => "not found"}, status: :not_found
  		end

	end
end