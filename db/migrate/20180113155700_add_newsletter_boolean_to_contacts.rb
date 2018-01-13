class AddNewsletterBooleanToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :newsletter, :boolean
  end
end
