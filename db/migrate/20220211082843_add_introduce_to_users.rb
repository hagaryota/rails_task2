class AddIntroduceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :introduce, :string
  end
end
