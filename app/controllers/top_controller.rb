class TopController < ApplicationController
  def index
  	search_term = params[:term]
  	create_search_log(search_term, request.remote_ip) if params[:submit_type] == "search" && !search_term.blank?
    @results = ITunesSearchAPI.search(term: search_term, country: "JP", media: "music")
    @search_keyword = search_term
  end

  private 
  def create_search_log(search_word, user_ip)
  	#検索ログを保存
	search_log = SearchLog.new()
	search_log.search_word = search_word
	search_log.user_ip = user_ip
	search_log.save
  end
end
