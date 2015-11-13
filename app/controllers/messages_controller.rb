class MessagesController < ApplicationController
  def hello
   @message = "Hey, there — don't forget to pull the master to update the latest changes!"
  end
end
