require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do
    it { should have_many :user_groups}
    it { should have_many(:groups).through(:user_groups)}
  end

  describe 'validations' do
    it { should validate_presence_of :first_name}
    it { should validate_presence_of :last_name}
  end

  describe 'instance methods' do
    describe '#user_group_role' do
      it "finds the user's role" do

        group = Group.create!(name: 'SlC Developers')
        user = User.create!(first_name: 'Ted', last_name: 'Staros')
        user_group = UserGroup.create!(user_id: user.id, group_id: group.id, role: 0)

        expect(user.user_group_role).to eq('Organizer')
      end
    end
  end
end
