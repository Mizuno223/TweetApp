class AddImageNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_columm :users, :image_name, :string
  end
end
