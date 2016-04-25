module API
	module V1
		class PlacesController < ApiApplicationController
			before_filter :authenticate_user!, :except => [:index, :show]

			# GET /api/v1/places
			def index
				@places = Place.all
				#render :index, status: :ok #status code 200
			end

			# GET /api/v1/places/1
			def show
				if params[:id].present?
					@place = Place.find_by(id: params[:id])
				elsif params[:major].present? && params[:minor].present?
			 		@place = Place.where(category_id: params[:major], minor: params[:minor]).first
				end
				
				if @place.present?
					render :show, status: :ok #status code 200
				else
					render_record_not_found
				end
			end
		end
	end
end