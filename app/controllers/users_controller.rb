class UsersController < ApplicationController

	respond_to :html, :json, :xml

	def index
		respond_with(@users = User.all)
	end
end
