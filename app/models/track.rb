class Track < ActiveRecord::Base
  belongs_to :playlist

  def get_track(track_name)
  end

  def create_track(track)
    Track.create(artist_name: track[artist_name], track_name: track[track_name], collection_name: track[collection_name], playlist_id: track[playlist_id], preview_url: track[preview_url], artwork_url: track[artwork_url],
                itunes_artist_id: track[itunes_artist_id], itunes_track_id: track[itunes_track_id], itunes_collection_id: track[itunes_collection_id], collection_view_url: track[collection_view_url], track_view_url: track[track_view_url])
  end

  def search_and_save_only_first_track(search_term)
    results = ITunesSearchAPI.search(term: search_term, country: "JP", media: "music")
    Track.create(result[0])
  end

  def get_track_by_random(track_num)
    tracks = Track.all.limit(50)
  end

end
