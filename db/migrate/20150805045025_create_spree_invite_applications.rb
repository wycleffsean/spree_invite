class CreateSpreeInviteApplications < ActiveRecord::Migration
  def change
    create_table :spree_invite_applications do |t|
      t.json :form
      t.boolean :confirmed
      t.string :confirmation_token

      t.timestamps null: false
    end
  end
end
