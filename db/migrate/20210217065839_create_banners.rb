class CreateBanners < ActiveRecord::Migration[5.2]
  def change
    create_table :banners do |t|
      t.string :attachments
      t.references :user , foreign_key: true

      t.timestamps
    end
  end
end
