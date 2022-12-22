class CreateFirms < ActiveRecord::Migration[7.0]
  def change
    create_table :firms do |t|
      t.string :employee_id
      t.string :techskill_id
      t.string :name
      t.string :verified

      t.timestamps
    end
  end
end
