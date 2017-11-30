class ContactAgeString < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :age, :string
  end
end
