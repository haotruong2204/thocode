class CreateStoryKanjis < ActiveRecord::Migration[7.0]
  def change
    create_table :story_kanjis do |t|
      t.integer :kanji_id
      t.string :title
      t.text :content
      t.integer :account_id

      t.timestamps
    end
  end
end
