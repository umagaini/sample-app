require 'spec helper'
describe "Authentication" do
    .
      .
      .
describe "authorization" do
describe "for non-signed-in users" do
let(:user) { FactoryGirl.create(:user) }
.
.
.
describe "in the microposts controller" do
describe "submitting to the create action" do
before { post microposts_path }
specify { response.should redirect_to(signin_path) }
end
describe "submitting to the destroy action" do
before do
micropost = FactoryGirl.create(:micropost)
delete micropost_path(micropost)
end
specify { response.should redirect_to(signin_path) }
end
end
.
.
.
end
end
end
   
   
