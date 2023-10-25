class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.integer :account_id
      t.integer :type_record
      t.text :kanji_list
      t.string :title
      t.string :slug
      t.string :name

      t.timestamps
    end
    add_index :records, :slug, unique: true
  end
end
