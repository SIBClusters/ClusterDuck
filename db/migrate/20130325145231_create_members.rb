class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.references :user
      t.references :group
      t.boolean :admin
      t.timestamps
    end
  end
end
