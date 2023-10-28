class AddNumberOfStrokesToKanjis < ActiveRecord::Migration[7.0]
  def change
    add_column :kanjis, :number_of_strokes, :integer
  end
end
