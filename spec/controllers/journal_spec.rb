require "rails_helper"
require "shoulda/matchers"

describe JournalsController, :type => :controller do



it "creates new journal entry with user input in the index" do
  Journal.should_receive(:create).with({:location})
end
end

# 	context 'when journal entry is created' do
# 		it 'creates new journal entry with user input in the index' do

# 			journal = create(:journal)

# 			post :create, session: { location: journal.location, weather: journal.weather, food: journal.food, mood: journal.mood, comment: journal.comment }

# 			expect(response).to redirect_to journals_path
# 		end
# end
