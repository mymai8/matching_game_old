class CommentChannel < ApplicationCable::Channel
  def subscribed
    @coach = Coach.find(params[:coach_id]) 
    stream_for "comment_channel"
  end

  def unsubscribed
    
  end
end
