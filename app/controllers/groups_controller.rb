class GroupsController < ApplicationController
  def create

    
    result = Groups::Create.call(params)
    
    if result.success?
      render json: GroupSerializer.new.serialize_to_json(result.object)
    else
      render json: { success: false, errors: result.errors }, status: :unprocessable_entity
    end
    
  end

  def update

    result = Groups::Update.call(params)
    if result.success?
      render json: GroupSerializer.new.serialize_to_json(result.object)
    else
      render json: { success: false, errors: result.errors }, status: :unprocessable_entity
    end
  end

  def destroy
     Groups::Delete.call(params)



  end

    
end
