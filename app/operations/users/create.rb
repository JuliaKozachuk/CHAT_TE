module Users
  class Create < ApplicationOperation
    def self.call(params)
      permitted_params = params.permit(:telephone, :email, :username, :avatar, :bio)
      user = User.new(permitted_params)

      if user.save
        response_object(object: user) 
      else
        response_object(success: false, errors: user.errors.messages) 
      end
    end


  end
end
