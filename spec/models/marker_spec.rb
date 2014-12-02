require 'rails_helper'

RSpec.describe Marker, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  	before :each do
  		@lat = Marker.new(latitude: "coordinates for latitude are here" )
  		@long = Marker.new(longitude: "coordinates for longitude are here" )
  	end

  	describe "#new" do
		it "return the marker latitude" do
			expect(@lat).to be_a(Marker)
			expect(@long).to be_a(Marker)
		end



		it "should have a latitude field" do
			expect(@lat.latitude).to eq("coordinates for latitude are here")
		end

		it "should have a longitude field" do
			expect(@long.longitude).to eq("coordinates for longitude are here")
		end

end

	describe Marker do
		 it {should respond_to(:latitude)}
		 it {should respond_to(:longitude)}
		 it {should respond_to(:user)}
	 	end
end
