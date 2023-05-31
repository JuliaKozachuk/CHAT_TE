module Messages
  class Create < ApplicationOperation
    def self.call(params)
      permitted_params = params.permit(:autor_id, :group_id, :text)
      message = Message.new(permitted_params)

      if message.save
        response_object(object: message) 
      else
        response_object(success: false, errors: message.errors.messages) 
      end
    end


  end
end