class CreateSites < ActiveRecord::Migration[7.2]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :domain
      t.string :api_key

      t.timestamps
    end
    add_index :sites, :api_key
  end
end
