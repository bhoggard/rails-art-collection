class User < ApplicationRecord
  devise :database_authenticatable, :lockable, :rememberable, :timeoutable, :trackable, :validatable

  def self.unlock_strategy_enabled?(_strategy)
    false
  end
end
