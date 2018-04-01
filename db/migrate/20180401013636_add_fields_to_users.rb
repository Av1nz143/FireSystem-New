class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :telephone_number, :string
    add_column :users, :record_sequence_number, :string, default: '00000001'
    
  end
end
