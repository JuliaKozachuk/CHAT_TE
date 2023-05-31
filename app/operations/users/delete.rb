module Users
  class Delete
    def self.call(params)
      user = User.find(params[:id])

      if user.destroy
        #response_object(object: user)
      else
        response_object(success: false, errors: user.errors.messages)
      end
    end


  end
end