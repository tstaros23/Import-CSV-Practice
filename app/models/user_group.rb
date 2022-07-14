class UserGroup < ApplicationRecord
  belongs_to :group
  belongs_to :user
  validates_presence_of :role

  enum role: { 'Organizer' => 0, 'Presenter' => 1, 'Participant' => 2}
end
