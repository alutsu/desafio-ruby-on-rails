require 'rails_helper'
require_relative '../support/devise'

RSpec.describe UsersController, type: :controller do
  context 'GET #index for logged user' do
    login_user

    it 'should success and render to index page' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  context 'GET #index for not logged user' do
    it 'should not render index if user are not authenticated' do
      get :index
      expect(response).to have_http_status(302)
    end
  end
end
