require 'rails_helper'

RSpec.describe Groups::Update do
  context 'success updated' do
    let(:group) { create(:group, title:'NewGroup', pictures:'newPictures' ) }
    let(:new_title) {'GroupNew' }
    let(:new_pictures) {'picturesnew'}
    


    it 'when all params good object exist' do
      params = {id: group.id, title: new_title }
      expect(Groups::Update.up(params).object).to be_present
    end

    

    it 'when email updated' do
      params = {id: group.id, pictures: new_pictures}
      expect(Groups::Update.up(params).object.pictures).to eq(new_pictures)

    
    end
    



  end
end