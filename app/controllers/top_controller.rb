class TopController < ApplicationController
  def index
  	search_term = params[:term]
  	unless search_term.blank?
  		create_search_log(search_term, request.remote_ip)
  	end 
    @results = ITunesSearchAPI.search(term: search_term, country: "JP", media: "music")
    @search_keyword = search_term if @results.blank?
  end

  private 
  def create_search_log(search_word, user_ip)
  	#検索ログを表示
	search_log = SearchLog.new()
	search_log.search_word = search_word
	search_log.user_ip = user_ip
	search_log.save
  end
end
