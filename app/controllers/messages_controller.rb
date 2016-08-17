class MessagesController < ApplicationController
	def index
		@messages= Message.all
	end

	def create
		message= Message.new(message_params)
		message[:user_id]= session[:user_id]
		flash[:message_error]= message.errors.full_messages unless message.save
		redirect_to '/messages'
	end

	private
		def message_params
			params.require(:message).permit(:message)
		end

end
