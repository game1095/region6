class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :number
      t.date :dated
      t.string :title
      t.string :details
      t.text :remark
      t.date :send_date

      t.references :confidential , foreign_key: true
      t.references :user , foreign_key: true
      t.references :department , foreign_key: true
      t.timestamps
    end
  end
end
