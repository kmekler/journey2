class ApiController < ApplicationController
    def index
      markers = Marker.all
      render json: markers, status: 200
    end

    def show
      markers = Marker.find(params[:id])
      render json: marker, status: 200

    end
  end