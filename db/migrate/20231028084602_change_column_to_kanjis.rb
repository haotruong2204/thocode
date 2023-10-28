class ChangeColumnToKanjis < ActiveRecord::Migration[7.0]
  def change
    rename_column :kanjis, :on, :yin_on
    rename_column :kanjis, :kun, :yin_kun
  end
end
