require 'rails_helper'

RSpec.describe Group, type: :model do
 describe 'relationships' do
   it { should have_many :user_groups}
   it { should have_many(:users).through(:user_groups)}
 end

 describe 'validations' do
   it { should validate_presence_of :name}
 end
end
