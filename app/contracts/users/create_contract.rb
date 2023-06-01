module Users
  class CreateContract < Dry::Validation::Contract
    json do
      required(:telephone).filled(:string)
      required(:email).filled(:string)
      required(:username).filled(:string)
    end
      
  end
end