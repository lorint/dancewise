class CreateArtistStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :artist_statuses do |t|
      t.string :status
      t.integer :artist_id

      t.timestamps
    end
  end
end
