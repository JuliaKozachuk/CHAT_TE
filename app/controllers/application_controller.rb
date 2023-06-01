class ApplicationController < ActionController::API

  def validate_params(schema: Dry::Validation::Contract, options: {}, &block)
    contract = schema.new
    contract.call(params.as_json)
  end

end
