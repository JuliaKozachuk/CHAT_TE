class ApplicationOperation

  def self.response_object(object: nil, success: true, errors: [])
    response_struct = Struct.new(:success?, :object, :errors)
    response_struct.new(success, object, errors)
  end

end