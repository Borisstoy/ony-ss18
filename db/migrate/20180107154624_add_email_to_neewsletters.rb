class AddEmailToNeewsletters < ActiveRecord::Migration[5.1]
  def change
    add_column :newsletters, :email, :string
  end
end
