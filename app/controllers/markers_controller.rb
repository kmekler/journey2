class MarkersController < ApplicationController
	def index
		@markers = current_user.markers.all
		render json: markers
	end
	def create
#		puts params.inspect
		# Marker.create(latitude: params[:lat], longitude: params[:lng])
		current_user.markers.create(latitude: params[:lat], longitude: params[:lng])
		render json: {info: "hells to the yeah"}
	end
end