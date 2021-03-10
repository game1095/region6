class CreatePostoffices < ActiveRecord::Migration[5.2]
  def change
    create_table :postoffices do |t|
      t.string :name
      t.string :postcode
      
      t.timestamps
    end
  end
end
