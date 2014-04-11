require 'spec_helper'

describe "MicropostPages" do
 subject { page }
  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }
describe "micropost creation" do
before { visit root_path }
describe "with invalid information" do
it "should not create a micropost" do
expect { click_button "post" }.should_not change(Micropost, :count)
end
describe "error messages" do
before { click_button "post" }
it { should have_content('error') }
end 
end
describe "with valid information" do
before { fill_in 'Micropost_content', with: "lorem ipsum" }
it "should create  a micropost" do
expect { click_button "post" }.should change(Micropost, :count).by(1)
end
end
end
end
