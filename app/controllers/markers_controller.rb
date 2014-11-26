class MarkersController < ApplicationController
	def create
#		puts params.inspect
		Marker.create(latitude: params[:lat], longitude: params[:lng])
		render json: {info: "hells to the yeah"}
	end
end