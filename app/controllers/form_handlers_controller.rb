class FormHandlersController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
  end

  def create
    @message = Message.new(params.require(:message).permit(:text))
    respond_to do |format|
      if @message.save
        format.html { redirect_to @message, notice: 'Message was Created.'}
        format.js
        format.json {render json: @message, status: :created, location: @message}
      else
        format.html{ render action: "new"}
        format.json{ render json: @message.errors, status: :unprocessable_entity}
      end
    end
  end
end
