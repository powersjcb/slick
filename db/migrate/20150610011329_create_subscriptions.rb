class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id, null: false
      t.integer :conversation_id, null: false

      t.timestamps null: false
    end
    add_index :subscriptions, :user_id
    add_index :subscriptions, :conversation_id
    add_index :subscriptions, [:conversation_id, :user_id], unique: true
  end
end
