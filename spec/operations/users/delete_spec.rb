require 'rails_helper'

RSpec.describe Users::Delete do
  context 'success delete' do
    let(:user) { create(:user, telephone: "+79089815117", email: "uliakozacuk649gmail.com", username: "Cat" ) }
    


    it 'when user delete' do
      params = {id: user.id }
      expect(Users::Delete.del(params)).to be_present
    end
  end
end