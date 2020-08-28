# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validate user' do
    it 'should be valid' do
      user = create(:user)

      expect(user).to be_valid
    end
  end

  context 'Validate user fields' do
    it 'name should not be valid' do
      user = build(:user, :invalid_name)

      expect(user).to_not be_valid
    end
    it 'email should not be valid' do
      user = build(:user, :invalid_email)

      expect(user).to_not be_valid
    end
    it 'password should not be valid' do
      user = build(:user, :invalid_password)

      expect(user).to_not be_valid
    end
    it 'admin should not be valid' do
      user = build(:user, :invalid_admin)

      expect(user).to_not be_valid
    end
  end
end
