class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.string :occupation

      t.timestamps
    end
  end
end
