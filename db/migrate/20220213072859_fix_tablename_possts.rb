class FixTablenamePossts < ActiveRecord::Migration[5.2]
  def change
    rename_table :possts, :posts
  end
end
