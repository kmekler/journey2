require "rails_helper"
require "shoulda/matchers"

describe JournalsController, :type => :controller do 

	describe "get index" do 

		it "renders index" do

			get :index

			expect(response.status).to eq(200)
		end	
	end

	describe "get new" do	

		it "has a 200 status code" do	

			get :new

	     	expect(response.status).to eq(200)

		end
	end		
end
