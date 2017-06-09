class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.date :first_contact
      t.date :signature_date
      t.float :project_value
      t.date :project_conclusion_date
      t.date :expected_conclusion_date
      t.references :service, index: true, foreign_key: true, null: false
      t.references :customer, index: true, foreign_key: true, null: false
      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
