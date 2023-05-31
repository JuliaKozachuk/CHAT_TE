module Groups
  class Delete
    def self.call(params)
      group = Group.find(params[:id])
    end


  end
end