
require 'rails_helper'

RSpec.describe Journal, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  	before :each do
  		@location = Journal.new(location: "General Assembly" )
  		@weather = Journal.new(weather: 5 )
  		@food = Journal.new(food: 3 )
  		@mood = Journal.new(mood: 4 )
  		@comment = Journal.new(comment: "The run was great!" )
  	end

  	describe "#new" do
		it "return the Journal entry fields" do
			expect(@location).to be_a(Journal)
			expect(@weather).to be_a(Journal)
			expect(@food).to be_a(Journal)
			expect(@mood).to be_a(Journal)
			expect(@comment).to be_a(Journal)
		end



		it "should have a location where user ran" do
			expect(@location.location).to eq("General Assembly")
		end

		it "should have a rating for the weather" do
			expect(@weather.weather).to eq(5)
		end

		it "should have a rating for the food" do
			expect(@food.food).to eq(3)
		end

		it "should have a rating for the mood" do
			expect(@mood.mood).to eq(4)
		end

		it "should have a comment for today's run" do
			expect(@comment.comment).to eq("The run was great!")
		end

end

	describe Journal do
		 it {should respond_to(:location)}
		 it {should respond_to(:weather)}
		 it {should respond_to(:food)}
		 it {should respond_to(:mood)}
		 it {should respond_to(:comment)}
	 	end

	 	it { should belong_to(:user) }
end