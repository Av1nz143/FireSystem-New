class AssociateUserAndUniversity < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :university_id, :integer
  end
end
