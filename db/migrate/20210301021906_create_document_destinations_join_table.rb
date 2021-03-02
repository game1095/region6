class CreateDocumentDestinationsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :documents, :destinations do |t|
      t.index :document_id
      t.index :destination_id
    end
  end
end
