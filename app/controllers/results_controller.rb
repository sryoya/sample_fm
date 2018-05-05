class ResultsController < ApplicationController
  def index
    search_term = params[:term]
    SearchLog.create_search_log(search_term, params[:type], request.remote_ip) unless search_term.blank?
    @results = ITunesSearchAPI.search(term: search_term, country: "JP", media: "music")
    @search_keyword = search_term
  end
end
