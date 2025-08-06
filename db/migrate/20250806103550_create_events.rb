class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.references :site, null: false, foreign_key: true
      t.string :event_type
      t.string :path
      t.string :referrer
      t.string :user_agent
      t.string :country
      t.string :ip_hash
      t.jsonb :data

      t.timestamps
    end
  end
end
