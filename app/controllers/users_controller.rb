
class UsersController < ApplicationController
  def create

    
    result = Users::Create.call(params)
    
    if result.success?
      render json: UserSerializer.new.serialize_to_json(result.object)
    else
      render json: { success: false, errors: result.errors }, status: :unprocessable_entity
    end
    
  end

  def update

    result = Users::Update.call(params)
    if result.success?
      render json: UserSerializer.new.serialize_to_json(result.object)
    else
      render json: { success: false, errors: result.errors }, status: :unprocessable_entity
    end
  end

  def destroy
     Users::Delete.call(params)



  end

    
end

