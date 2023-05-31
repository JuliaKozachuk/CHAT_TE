module Messages
  class Update < ApplicationOperation
    def self.call(params)
      message = Messge.find(params[:id])
      message.assign_attributes(params)

      if message.save
        response_object(object: message)
      else
       message.errors.messages
       response_object(success: false, errors: message.errors.messages)
      end
    end


  end
end
