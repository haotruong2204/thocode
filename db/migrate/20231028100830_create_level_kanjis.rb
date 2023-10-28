class CreateLevelKanjis < ActiveRecord::Migration[7.0]
  def change
    create_table :level_kanjis do |t|
      t.string :name

      t.timestamps
    end
  end
end
