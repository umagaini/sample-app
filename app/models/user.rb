class user < ActiveRecord::base
att_accessible :name, :email, :password, :password_confirmation has_secure_password
has_many :microposts, dependent: :destroy
.
.
.
def feed
Micropost.where("user_id=?", id)
end
.
.
.
end
