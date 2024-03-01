class CreateMedia < ActiveRecord::Migration[7.1]
  def change
    create_table :media do |t|
      t.string :name,        limit: 100, null: false
      t.string :furigana,    limit: 200, null: false
      t.string :website_url, limit: 200

      t.timestamps
    end
    add_index :media, :name, unique: true
    add_index :media, :furigana
  end
end
