class ChangeResult < ActiveRecord::Migration
  def change
    rename_column :results, :user, :user_name
  end
end
