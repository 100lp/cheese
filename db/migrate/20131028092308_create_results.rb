class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :user, :result, :game
      t.timestamps
    end
  end
end
