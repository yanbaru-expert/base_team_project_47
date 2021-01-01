class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

   def create
    User.create(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:title, :content)
  end

end
