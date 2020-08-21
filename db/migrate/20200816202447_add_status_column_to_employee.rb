class AddStatusColumnToEmployee < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :status, :string, default: 'active'
  end
end