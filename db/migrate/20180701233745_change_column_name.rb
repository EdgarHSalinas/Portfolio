class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :skills, :percent_utilzed, :percent_used
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
