module Groups
  class Update < ApplicationOperation
    def self.call(params)
      group = Group.find(params[:id])
      group.assign_attributes(params)

      if group.save
        response_object(object: group)
      else
       user.errors.messages
       response_object(success: false, errors: user.errors.messages)
      end
    end


  end
end
