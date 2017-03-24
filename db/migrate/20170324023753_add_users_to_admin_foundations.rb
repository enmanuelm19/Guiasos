class AddUsersToAdminFoundations < ActiveRecord::Migration
  def change
    add_reference :admin_foundations, :user, index: true, foreign_key: true
  end
end
