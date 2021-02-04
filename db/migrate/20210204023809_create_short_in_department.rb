class CreateShortInDepartment < ActiveRecord::Migration[5.2]
  def change
    add_column :departments , :short , :string
  end
end
