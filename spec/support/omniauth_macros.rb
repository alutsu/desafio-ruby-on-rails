module OmniauthMacros
  def mock_auth_hash
    OmniAuth.config.mock_auth[:github] = {
      provider: 'github',
      uid: '123545',
      info: {
        name: 'mockuser',
        email: 'mock_user@mail.com'
      }
    }
  end
end
