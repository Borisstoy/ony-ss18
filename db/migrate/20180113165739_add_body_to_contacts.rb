class AddBodyToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :body, :text
  end
end
