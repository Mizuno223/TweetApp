class CreatePossts < ActiveRecord::Migration[5.2]
  def change
    create_table :possts do |t|
      t.text :content

      t.timestamps
    end
  end
end
