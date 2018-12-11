class ContactsController < ApplicationController
	
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash[:error] = nil
		else
			flash[:error] = "Error making contact..."
			render :new
		end
	end

end
