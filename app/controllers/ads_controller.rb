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

	def new
		@ad = Ad.new
		3.times do 
			comment = @ad.comments.build
		end
		#@comment = @ad.comments.new
	end

	def create
		#yay
		@ad = Ad.new(params[:ad])
		#@comment = @ad.comments.new(params[:comment])
		
		#@comment.save
		@ad.save
	end

end
