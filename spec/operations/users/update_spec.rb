require 'rails_helper'

RSpec.describe Users::Update do
  context 'success updated' do
    let(:user) { create(:user, telephone: "+79089815117", email: "uliakozacuk649gmail.com", username: "Julia" ) }
    let(:new_username) {'Fool' }
    let(:new_email) {'RedDeamon@mail.com'}
    let(:new_telephone) {'+7655256556645'}


    it 'when all params good object exist' do
      params = {id: user.id, username: new_username }
      expect(Users::Update.up(params).object).to be_present
    end

    it 'when username updated' do
      params = {id: user.id, username: new_username }
      expect(Users::Update.up(params).object.username).to eq(new_username)
    end

    it 'when email updated' do
      params = {id: user.id, email: new_email}
      expect(Users::Update.up(params).object.email).to eq(new_email)

    
    end
    it 'when telephone updated' do
      params = {id: user.id, telephone: new_telephone}
      expect(Users::Update.up(params).object.telephone).to eq(new_telephone)

    
    end



  end
end