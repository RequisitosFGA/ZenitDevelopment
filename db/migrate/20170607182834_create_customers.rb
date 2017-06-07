class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :cnpj
      t.string :email
      t.string :telephone
      t.string :fantasy_name

      t.timestamps
    end
  end
end
