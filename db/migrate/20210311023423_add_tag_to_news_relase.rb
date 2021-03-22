class AddTagToNewsRelase < ActiveRecord::Migration[5.2]
  def change
    add_reference :news_releases , :tag , foreign_key: true 
  end
end
