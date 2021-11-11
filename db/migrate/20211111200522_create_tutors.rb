class CreateTutors < ActiveRecord::Migration[6.1]
  def change
    create_table :tutors do |t|
      t.string :name, limit: 256 , null: false
      t.string :address, limit: 256
      t.string :phone, limit: 64

      t.timestamps
    end

    add_index :tutors, :name
    add_index :tutors, :tutor_id
  end
end
