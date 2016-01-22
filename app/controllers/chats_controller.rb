class ChatsController < ApplicationController

  def show
    @chat = Chat.find_by(id: params[:id])
  end

  def index
    @chats = Chat.order(created_at: :desc).limit(25)
  end

end