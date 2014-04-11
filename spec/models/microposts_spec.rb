require 'spec_helper'

describe Microposts do
let(:user) { factorygirl.create(:user) }
before do
#this code is wrong!
@microposts = micropost.new(content: "lorem ipsum", user_id: user.id)
end
subject { @microposts }
it { should respond_to(:content) }
it { should respond_to(:user_id) }
it { should be_valid }
describe "when user_id is not present" do
before { @microposts.user_id = nil }
it { should_not be_valid }
describe "accessible attributes" do
it "should not allow access to user_id" do
expect do
Micropost.new(user_id: user.id)
        end.should raise_error(Activemodel::MassAssignmentSesurity::error)
end
end
end
end
end
end
