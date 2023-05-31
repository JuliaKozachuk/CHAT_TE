require 'rails_helper'

RSpec.describe Users::Create do
  context 'success created' do
    
    it 'when all params good object exist' do
      params = {telephone: "+79089815117", email: "uliakozacuk649gmail.com", username: "Julia"}
      expect(Users::Create.call(params).object).to be_present
    end
    it 'checks that the object has the specified attributes with values.' do
      params = {telephone:"+79998546333", email: "cat.cat@mail.com", username: "Cat"}
      expect(Users::Create.call(params).object.as_json['username']).to eq("Cat")
    end
    it 'the object responds to the specified method' do
      params = {telephone:"+79998546333", email: "cat.cat@mail.com", username: "Cat"}
      expect(params).to respond_to(:length)
    end
  
  

  end

  context 'fail created' do
    let(:params) { { username: ""} }
    subject { Users::Create.call(params) }

    it 'when phone and email nil validation' do
      expect(subject.errors[:email].first).to eq("can't be blank")
    end

    it 'when phone and email nil validation' do
      expect(subject.errors[:telephone].first).to eq("can't be blank")
    end
    it 'when username nil validation' do
      expect(subject.errors[:username].first).to eq("can't be blank")
    end

  end
end