module Groups
  class Create < ApplicationOperation
    def self.call(params)
      permitted_params = params.permit(:title, :pictures)
     
      group = Group.new(permitted_params)

      if group.save
        response_object(object: group) 
      else
        response_object(success: false, errors: group.errors.messages) 
      end
    end


  end
end
