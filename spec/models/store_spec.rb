require 'rails_helper'

RSpec.describe Store, type: :model do
  context 'Validate store name' do
    it 'should be valid' do
      store = create(:store)

      expect(store).to be_valid
    end

    it 'should not be valid' do
      store = build(:store, :invalid_name_store)

      expect(store).to_not be_valid
    end
  end

  context 'Validate store owner' do
    it 'should be valid' do
      store = create(:store)

      expect(store).to be_valid
    end

    it 'should not be valid' do
      store = build(:store, :invalid_owner_store)

      expect(store).to_not be_valid
    end
  end
end
