module Users
  class Update < ApplicationOperation
    def self.call(params)
      user = User.find(params[:id])
      permitted_params = params.require(:user).permit(:telephone, :email, :username)
      user.assign_attributes(permitted_params)

      if user.save
        response_object(object: user)
      else
       user.errors.messages
       response_object(success: false, errors: user.errors.messages)
      end
    end


  end
end
