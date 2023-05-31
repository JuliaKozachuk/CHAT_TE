require 'rails_helper'

RSpec.describe Messages::Create do
  context 'success created' do
    
    it 'when all params good object exist' do
      params = {user_id:1, group_id:1,text:'Hello'}
      expect(Messages::Create.call(params).object).to be_present
    end
    it 'checks that the object has the specified attributes with values.' do
      params = {user_id:1, group_id:1,text:'Hello'}
      expect(Messages::Create.call(params).object.as_json['user_id']).to eq(1)
    end
    it 'the object responds to the specified method' do
      params = {user_id:1, group_id:1,text:'Hello'}
      expect(params).to respond_to(:length)
    end
  
  

  end

  context 'fail created' do
    let(:params) { { text: 'Hello'} }
    subject { Messages::Create.call(params) }

    it 'when phone and email nil validation' do
      expect(subject.errors[:text].first).to eq("can't be blank")
    end

    it 'when phone and email nil validation' do
      expect(subject.errors[:user_id].first).to eq("can't be blank")
    end
    it 'when username nil validation' do
      expect(subject.errors[:group_id].first).to eq("can't be blank")
    end

  end
end