class CreateLoos < ActiveRecord::Migration[6.1]
  def change
    create_table :loos do |t|
      t.string :name
      t.string :facility_type
      t.string :address
      t.string :town
      t.string :state
      t.integer :rating

      t.timestamps
    end
  end
end
