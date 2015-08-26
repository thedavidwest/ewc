class CreateWearables < ActiveRecord::Migration
  def change
    create_table :wearables do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
