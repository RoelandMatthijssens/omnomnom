class ItemsController < ApplicationController
	before_action :set_item, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
	respond_to :html, :json, :js

	def index
		@items = Item.all
		respond_with(@items)
	end

	def show
		respond_with(@item)
	end

	def new
		@item = Item.new
		respond_with(@item)
	end

	def edit
	end

	def create
		@item = Item.new(item_params)
		@item.save
		redirect_to :items
	end

	def update
		@item.update(item_params)
		respond_with(@item)
	end

	def destroy
		@item.destroy
		respond_with(@item)
	end

	private
		def set_item
			@item = Item.find(params[:id])
		end

		def item_params
			params.require(:item).permit(:name, :price)
		end
end
