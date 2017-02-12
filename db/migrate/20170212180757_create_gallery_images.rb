class CreateGalleryImages < ActiveRecord::Migration[5.0]
  def change
    create_table :gallery_images do |t|
      t.string :image
      t.string :alt

      t.timestamps
    end
  end
end
