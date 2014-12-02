describe User do

    it { should validate_presence_of(:email)}
    it { should validate_presence_of(:password_digest)}

    it "has an email" do
      #now use FactoryGirl to build a user
      user = FactoryGirl.build_stubbed(:a_user)
      expect(user.email).to_not be_nil  
    end

    it "has a password" do
      user = FactoryGirl.build_stubbed(:a_user)
      expect(user.password_digest).to_not be_nil
    end

    it { should have_many(:markers) }
    it { should have_many(:journals) }
   
end


