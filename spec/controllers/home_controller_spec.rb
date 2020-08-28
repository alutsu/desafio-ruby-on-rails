require 'rails_helper'
require_relative '../support/devise'

RSpec.describe HomeController, type: :controller do
  context 'GET #index for logged user' do
    login_user

    it 'should success and render to index page' do
      get :index
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end
  end

  context 'GET #index for not logged user' do
    it 'should not render index if user are not authenticated' do
      get :index
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
