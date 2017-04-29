class User < ApplicationRecord
  has_many :u_streaks

  def self.from_omniauth(auth)
    user = User.find_by uid: auth.uid, provider: auth.provider

    if user.nil?
      user = User.new
      user.uid = auth.uid
      user.provider = auth.provider
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at auth.credentials.expires_at
      user.save!
    end

    return user
  end
end
