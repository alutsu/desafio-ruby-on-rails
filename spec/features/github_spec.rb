require 'rails_helper'

RSpec.describe 'access home page' do
  it 'can sign in user with Github account' do
    mock_auth_hash
    visit user_github_omniauth_authorize_path
    # click_link "Entrar"
    page.should have_content('Sair')
  end
end
