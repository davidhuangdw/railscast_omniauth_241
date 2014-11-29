class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    User.find_or_create_by(provider:auth[:provider], uid:auth[:uid]) do |user|
      user.name = auth[:info][:name]
    end
  end
end
