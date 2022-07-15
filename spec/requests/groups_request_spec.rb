require 'rails_helper'

 RSpec.describe GroupsController, type: :request do
   describe 'GET index' do
     context 'when the response is successful' do
       it "assigns @groups" do
         group = Group.create!(name: 'SLC Developers')
         get '/groups'

         expect(assigns(:groups)).to eq([group])
       end

       it "renders the index template" do
         get '/groups'

         expect(response).to render_template("groups/index")
         expect(response.status).to eq(200)
       end
     end
   end
 end
