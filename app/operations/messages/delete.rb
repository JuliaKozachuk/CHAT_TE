module Messages
  class Delete
    def self.call(params)
      message = Message.find(params[:id])
    end


  end
end