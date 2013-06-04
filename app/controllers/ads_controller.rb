class AdsController < ApplicationController

	respond_to :html, :xml, :json

	def index
		@ads = Ad.all
		respond_with(@ads)
	end

	def show
		@ad = Ad.find(params[:id])
		respond_with(@ad)
	end

end
