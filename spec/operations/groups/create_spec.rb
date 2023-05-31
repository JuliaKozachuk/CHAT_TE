require 'rails_helper'

RSpec.describe Groups::Create do
  context 'success created' do
    
    it 'when all params good object exist' do
      params = {title:'NewGroup', pictures:'newPictures'}
      expect(Groups::Create.call(params).object).to be_present
    end
    it 'checks that the object has the specified attributes with values.' do
      params = {title:'NewGroup', pictures:'newPictures'}
      expect(Groups::Create.call(params).object.as_json['title']).to eq("NewGroup")
    end
    it 'the object responds to the specified method' do
      params = {title:'NewGroup', pictures:'newPictures'}
      expect(params).to respond_to(:length)
    end
  
  

  end

  context 'fail created' do
    let(:params) { { title: ""} }
    subject { Groups::Create.call(params) }

    it 'when phone and email nil validation' do
      expect(subject.errors[:title].first).to eq("can't be blank")
    end

    

  end
end