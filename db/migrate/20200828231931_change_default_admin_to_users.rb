class ChangeDefaultAdminToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :admin, true
  end
end
