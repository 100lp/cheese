class ChangeUser < ActiveRecord::Migration
  def change
    rename_column :users, :result, :global_result
  end
end
