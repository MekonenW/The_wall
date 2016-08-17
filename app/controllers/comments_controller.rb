class CommentsController < ApplicationController
	def create
		comment= Comment.new(comment_params)
		comment[:user_id] = session[:user_id]
		flash[:comment_errors]= {"#{comment_params[:message_id]}"=> comment.errors.full_messages} unless comment.save
		redirect_to '/messages'
	end
	private 

		def comment_params
			params.require(:comment).permit(:comment, :message_id)
		end
end
