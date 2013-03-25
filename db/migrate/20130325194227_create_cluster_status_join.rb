class CreateClusterStatusJoin < ActiveRecord::Migration
  def change
    create_table :clusters_statuses, :id => false do |t|
      t.references :cluster
      t.references :status
    end 
  end
end
