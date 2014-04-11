require 'spec_helper'
describe user do
before do
@user = user.new(name: "example user", email: "user@example.com",password: "foobar", password_confirmation: "foobar")
describe "micropost associations" do
before { @user.save }
let!(:older_micropost) do
FactoryGirl.create(:micropost, user: @user, created_at: 1.day.ago)
end
let!(:newer_micropost) do
FactoryGirl.create(:micropost, user: @user, created_at: 1.hour.ago)
end
subject { @user }
.
.
.
it { should respond_to(:authenticate) }
it { should respond_to(:microposts) }
.
.
.
describe "micropost associations" do
before { @user.save }
let!(:older_micropost) do
FactoryGirl.create(:micropost,user: @user, created_at: 1.day.ago)
end
let!(:newer_micropost) do
FactoryGirl.create(:micropost, user: @user, created_at: 1.hour.ago)
end
it "should destroy associated microposts" do
microposts = @user.microposts
@user.destroy
microposts.each do |micropost|
micropost.find_by_id(micropost.id).should be_nill
end
end
end
it "should have the right microposts in the right order" do
@user.microposts.should == [newer_micropost, older_micropost]
end
end 
end
