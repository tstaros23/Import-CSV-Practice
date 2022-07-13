require 'rails_helper'

 RSpec.feature 'Groups' do
   scenario "Visitor sees a list of meetup group names" do
     group = Group.create!(name: 'SLC Developers')
     group2 = Group.create!(name: 'Utah JS')

     visit groups_path

     expect(page).to have_content(group.name)
     expect(page).to have_content(group2.name)
   end
 end
