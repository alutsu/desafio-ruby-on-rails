# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validate user name' do
    it 'should be valid' do
      user = User.new(name: 'Valid name', email: 'valid@mail.com', password: '123123', admin: true)

      expect(user).to be_valid
    end

    it 'should not be valid' do
      user = User.new(email: 'valid@mail.com', password: '123123', admin: true)

      expect(user).to_not be_valid
    end
  end

  context 'Validate user email' do
    it 'should be valid' do
      user = User.new(name: 'Valid name', email: 'valid@mail.com', password: '123123', admin: true)

      expect(user).to be_valid
    end

    it 'should not be valid' do
      user = User.new(name: 'Valid name', password: '123123', admin: true)

      expect(user).to_not be_valid
    end
  end

  context 'Validate user password' do
    it 'should be valid' do
      user = User.new(name: 'Valid name', email: 'valid@mail.com', password: '123123', admin: true)

      expect(user).to be_valid
    end

    it 'should not be valid' do
      user = User.new(name: 'Valid name', email: 'valid@mail.com', password: '', admin: true)

      expect(user).to_not be_valid
    end
  end

  context 'Validate user permissions' do
    it 'should be valid' do
      user = User.new(name: 'Valid name', email: 'valid@mail.com', password: '123123', admin: true)

      expect(user).to be_valid
    end

    it 'should not be valid' do
      user = User.new(name: 'Valid name', email: 'valid@mail.com', password: '123123')

      expect(user).to_not be_valid
    end
  end
end
