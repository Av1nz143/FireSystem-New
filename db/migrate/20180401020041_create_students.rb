class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :tax_identification_number
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :zip_code
      t.string :state
      t.string :country, default: 'US'
      t.integer :university_id

      t.string :payment_amount_1
      t.string :payment_amount_2
      t.string :payment_amount_3
      t.string :payment_amount_4
      t.string :payment_amount_5

      t.string :tin_certification, default: '1'

      t.timestamps
    end
  end
end
