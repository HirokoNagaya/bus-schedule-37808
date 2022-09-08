class MessagesController < ApplicationController
  def index
    @post = Post.new
  end
end
