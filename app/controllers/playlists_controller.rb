class PlaylistsController < ApplicationController
  def create
    Playlist.create(create_params)
    redirect_to :root and return
  end

  def index
    @playlists = Playlist.all
  end

  def edit
    @playlist = Playlist.find(params[:id])
    @track = Track.new
    @results = ITunesSearchAPI.search(term: params[:term], country: "JP", media: "music")
    @search_keyword = params[:term] if @results.blank?
  end

  def update
    @playlist = Playlist.find(params[:id])
    @track = Track.new
    @results = ITunesSearchAPI.search(term: params[:term], country: "JP", media: "music")
    @search_keyword = params[:term] if @results.blank?
  end

  def show
  end

  private
  def create_params
    params.require(:playlist).permit(:title, :memo, :password)
  end

  def update_params
  end
end
