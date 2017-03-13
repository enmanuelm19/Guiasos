class CreateAdminFoundations < ActiveRecord::Migration
  def change
    create_table :admin_foundations do |t|
      t.string :name
      t.string :description
      t.string :mission
      t.string :view
      t.string :phone
      t.string :mail

      t.timestamps null: false
    end
  end
end
