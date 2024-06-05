class AddImageUrlAndThumbnailToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :image_url, :string
    add_column :cars, :thumbnail, :string
  end
end
