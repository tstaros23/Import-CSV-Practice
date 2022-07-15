require 'rails_helper'

 RSpec.feature 'Groups#show' do
   scenario "Visitor sees a list of meetup group names" do
     group = Group.create!(name: 'SLC Developers')
     group2 = Group.create!(name: 'Utah JS')
     user = User.create!(first_name: 'Ted', last_name: 'Staros')
     user2 = User.create!(first_name: 'Basil', last_name: 'Staros')
     UserGroup.create!(user_id: user.id, group_id: group.id, role: 'Organizer')
     UserGroup.create!(user_id: user2.id, group_id: group.id, role: 'Participant')

     visit group_path(group)

     expected = expect(page).to have_content(group.name)
     expect(page).to_not have_content(group2.name)

     within("#user-#{user.id}") do
       expect(page).to have_content(user.first_name)
       expect(page).to have_content(user.last_name)
     end
   end
 end
