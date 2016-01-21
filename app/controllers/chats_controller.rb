class ChatsController < ApplicationController

  def show
    @chat = Chat.find_by(id: params[:id])
  end

end