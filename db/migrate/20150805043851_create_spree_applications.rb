class CreateSpreeApplications < ActiveRecord::Migration
  def change
    create_table :spree_applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.hstore :form
      t.integer :address_id

      t.timestamps null: false
    end
  end
end
