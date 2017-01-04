class User < ActiveRecord::Base
  has_many :participants
  has_many :meetings, through: :participants

  def self.find_or_create_from_omniauth(auth)
    provider = auth.provider
    user_id = auth.uid

    find_or_create_by(provider: provider, user_id: user_id) do |user|
      user.provider = provider
      user.user_id = user_id
      user.email = auth.info.email
      user.username = auth.info.name
      user.avatar_url = auth.info.image
    end
  end
end
