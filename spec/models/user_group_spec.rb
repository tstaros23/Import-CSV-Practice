require 'rails_helper'

 RSpec.describe UserGroup, type: :model do
   describe 'relationships' do
     it { should belong_to :user }
     it { should belong_to :group }
   end

   describe 'validations' do
     it { should validate_presence_of :role}
   end
 end
