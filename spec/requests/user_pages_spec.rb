require 'spec_helper'
describe "user pages" do
  describe Micropost do
    let(:user) { FactoryGirl.create(:user) }
    before { @micropost = user.microposts.build(content: "Lorem ipsum") }
    subject { @micropost }
    it { should respond_to(:content)
      it { should respond_to(:user_id) }
        it { should respond_to(:user) }
          its(:user) { should == user }
    it { should be_valid }
end
describe "profile page" do
let (:user) { FactroyGirl.create(:user) }
let(:m1){ FactroyGirl.create(:micropost, user: user, content: "foo") }
let!(:m2) { FactoryGirl.create(:micropost, user: user, content: "bar") }
before { visit user_path(user) }
it { should have_selector('h1', text: user.name) }
it { should have_selector('title', text: user.name) }
describe "microposts" do
it { should have_content(m1.content) }
it { should have_content(m2.content) }
it {should have_content(user.microposts.count) }
end
end
