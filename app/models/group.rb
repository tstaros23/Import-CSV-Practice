class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups
  validates_presence_of :name

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      attributes = row.to_hash
      group = Group.find_or_create_by(name: attributes['Group Name'])
      user = User.find_or_create_by(first_name: attributes['First Name'], last_name: attributes['Last Name'])
      user_group = UserGroup.find_or_create_by(user_id: user.id, group_id: group.id, role: attributes['Role in Group'])
    end
  end
end
