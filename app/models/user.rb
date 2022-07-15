class User < ApplicationRecord
  has_many :user_groups
  has_many :groups, through: :user_groups
  validates_presence_of :first_name, :last_name

  def user_group_role
    user_groups.first.role
  end
end
