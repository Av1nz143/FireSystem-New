# == Schema Information
#
# Table name: universities
#
#  id                        :integer          not null, primary key
#  name                      :string
#  address_1                 :string
#  address_2                 :string
#  city                      :string
#  state                     :string
#  zip_code                  :string
#  country                   :string
#  telephone_number          :string
#  tax_identification_number :string
#  type_of_return            :string           default("8")
#  amount_codes              :string           default("1345")
#  transfer_agent_indicator  :string           default("0")
#  record_sequence_number    :string           default("00000002")
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class University < ApplicationRecord
  has_many :users
  has_many :students
end
