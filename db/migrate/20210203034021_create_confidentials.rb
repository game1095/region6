class CreateConfidentials < ActiveRecord::Migration[5.2]
  def change
    create_table :confidentials do |t|
      t.string :name
      t.timestamps
    end
  end
end
