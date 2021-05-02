class RoomsController < ApplicationController
  def show
    @messages = Message.includes(:user).order(:id).last(100)
    @message = current_user.messages.build
  end

  def show_additionally
    # ********** 以下を追加 **********
    # 追加のメッセージ50件を取得する
    last_id = params[:oldest_message_id].to_i - 1    
    @messages = Message.includes(:user).order(:id).where(id: 1..last_id).last(50)
    # ********** 以上を追加 **********
  end
end
