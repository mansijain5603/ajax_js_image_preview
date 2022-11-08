class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :age
      t.integer :house_no
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.integer :pincode

      t.timestamps
    end
  end
end
