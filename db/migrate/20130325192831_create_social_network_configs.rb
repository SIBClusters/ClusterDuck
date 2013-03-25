class CreateSocialNetworkConfigs < ActiveRecord::Migration
  def change
    create_table :social_network_configs do |t|
      t.string :network_name
      t.string :network_username
      t.string :network_user_id
      t.references :user
      t.timestamps
    end
  end
end
