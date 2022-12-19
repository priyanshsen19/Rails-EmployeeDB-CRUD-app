class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :emp_id
      t.string :company_id
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
