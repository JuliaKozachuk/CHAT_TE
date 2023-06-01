
class UsersController < ApplicationController
  
  def create
    contract = validate_params(schema: Users::CreateContract)
    if contract.failure?
      render json: { success: false, errors: contract.errors }, status: :unprocessable_entity
    else
      result = Users::Create.call(contract.to_h)
  
      if result.success?
        render json: UserSerializer.new.serialize_to_json(result.object)
      else
        render json: { success: false, errors: result.errors }, status: :unprocessable_entity
      end
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

  private

    
end

