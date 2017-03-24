class Admin::Foundation < ActiveRecord::Base
  belongs_to :user
  scope :created_by, ->(user) {where(user_id: user.id)}
end
