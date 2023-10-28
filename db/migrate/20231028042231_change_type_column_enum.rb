class ChangeTypeColumnEnum < ActiveRecord::Migration[7.0]
  def change
    change_column :accounts, :role, :string
    change_column :admins, :role, :string
    change_column :histories, :type_history, :string
    change_column :records, :type_record, :string
  end
end
