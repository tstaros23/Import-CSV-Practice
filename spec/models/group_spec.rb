require 'rails_helper'

RSpec.describe Group, type: :model do
 describe 'relationships' do
   it { should have_many :user_groups}
   it { should have_many(:users).through(:user_groups)}
 end

 describe 'validations' do
   it { should validate_presence_of :name}
 end

 describe 'instance methods' do
  describe "#organizers" do
      it "shows all organizers per group" do
        group = Group.create!(name: 'SlC Developers')
        user = User.create!(first_name: 'Ted', last_name: 'Staros')
        user2 = User.create!(first_name: 'Basil', last_name: 'Staros')
        user3 = User.create!(first_name: 'Matt', last_name: 'Toensing')
        user_group = UserGroup.create!(user_id: user.id, group_id: group.id, role: 'Organizer')
        user_group2 = UserGroup.create!(user_id: user2.id, group_id: group.id, role: 'Participant')
        user_group3 = UserGroup.create!(user_id: user3.id, group_id: group.id, role: 'Organizer')

        expect(group.organizers).to eq([user_group, user_group3])

      end
   end
 end
end
