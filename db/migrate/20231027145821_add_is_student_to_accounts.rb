class AddIsStudentToAccounts < ActiveRecord::Migration[7.0]
  def change
    add_column :accounts, :is_student, :boolean, default: false
  end
end
