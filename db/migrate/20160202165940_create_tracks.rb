class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :artist_name
      t.string :track_name
      t.string :collection_name
      t.integer :playlist_id
      t.text :preview_url
      t.text :artwork_url
      t.integer :itunes_artist_id
      t.integer :itunes_track_id
      t.integer :itunes_collection_id
      t.text :collection_view_url
      t.text :track_view_url
      t.timestamps null: false
    end
  end
end
