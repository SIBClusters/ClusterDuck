class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :user_id
      t.text :post
      t.datetime :status_created_at 
      t.timestamps
    end
  end
end
