class CreateUniversities < ActiveRecord::Migration[5.2]
  def change
    create_table :universities do |t|
      t.string :name # 80 max length
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country
      t.string :telephone_number
      t.string :tax_identification_number

      t.string :type_of_return, default: '8' # Default 8
      t.string :amount_codes, default: '1345' # Default 1345
      t.string :transfer_agent_indicator, default: '0' # Default 0
      t.string :record_sequence_number, default: '00000002'

      t.timestamps
    end
  end
end
