class CreateReporters < ActiveRecord::Migration[7.1]
  def change
    create_table :reporters do |t|
      t.string     :name,         null: false, limit: 100
      t.string     :furigana,     null: false, limit: 200
      t.boolean    :independent,  null: false
      t.belongs_to :medium,       null: true,  foreign_key: true
      t.integer    :desirability, null: false, limit:   1
      t.string     :portrait_source,           limit: 300
      t.string     :portrait_copyright,        limit: 100

      t.timestamps
    end
  end
end
