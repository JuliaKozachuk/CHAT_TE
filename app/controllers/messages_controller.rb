class MessagesController < ApplicationController
  def create

    
    result = Messages::Create.call(params)
    
    if result.success?
      render json: MessageSerializer.new.serialize_to_json(result.object)
    else
      render json: { success: false, errors: result.errors }, status: :unprocessable_entity
    end
    
  end

  def update

    result = Messages::Update.call(params)
    if result.success?
      render json: MessageSerializer.new.serialize_to_json(result.object)
    else
      render json: { success: false, errors: result.errors }, status: :unprocessable_entity
    end
  end

  def destroy
     Messages::Delete.call(params)



  end

    
end