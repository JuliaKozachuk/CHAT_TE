module Users
  class Create < ApplicationOperation
    def self.call(params)
      user = User.new(params)

      if user.save
        response_object(object: user) 
      else
        response_object(success: false, errors: user.errors.messages) 
      end
    end


  end
end
