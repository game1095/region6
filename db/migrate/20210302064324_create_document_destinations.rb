class CreateDocumentDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :document_destinations do |t|
      t.integer :document_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
