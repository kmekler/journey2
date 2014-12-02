##the rails helper takes care of a lot of things that help us write tests
#in the rails enviorment, make sure to include it
require "rails_helper"
require "shoulda/matchers"

#here we use describe and pass the object name of HomeController
followed by us explicity saying that this is a test of a 
controller. 
describe MarkersController, :type => :controller do

  ##the syntax of these tests should be familiar, it's the same Behavior Driven 
  #Development syntax we have seen with the Jasmine javascript 
  #testing framework
  it "should render json" do

    post :create

    expect(current_user.markers.create).to render_json
    
  end
end
