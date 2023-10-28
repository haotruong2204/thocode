class AddLevelKanjiIdToKanjis < ActiveRecord::Migration[7.0]
  def change
    add_column :kanjis, :level_kanji_id, :integer
  end
end
