class TopController < ApplicationController
  def index
    @results = ITunesSearchAPI.search(term: params[:term], country: "US", media: "music")
    @search_keyword = params[:term] if @results.blank?
  end
end
