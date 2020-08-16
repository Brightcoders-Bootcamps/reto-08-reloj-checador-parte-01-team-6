class AddWorkCheckupsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :work_checkups do |t|
      t.string :private_number

      t.timestamps
    end

    add_reference :work_checkups, :employee, foreign_key: true
  end
end
