class ResultsController < ApplicationController
  def index
    search_term = params[:term]
    create_search_log(search_term, params[:type], request.remote_ip) unless search_term.blank?
    @results = ITunesSearchAPI.search(term: search_term, country: "JP", media: "music")
    @search_keyword = search_term
  end

  private
  #検索ログを保存
  SEARCH_TYPE_SEARCH = 0 #検索タイプ: 検索画面→0
  SEARCH_TYPE_LINK = 1 #検索タイプ: リンクから→1
  def create_search_log(search_word, search_type, user_ip)
    if search_type == "search"
      search_type = SEARCH_TYPE_SEARCH
    elsif search_type == "link"
      search_type = SEARCH_TYPE_LINK
    end
    SearchLog.create(search_word: search_word, search_type: search_type, user_ip: user_ip)
    # 絵文字等が入力されたときのエラー回避
    rescue ActiveRecord::StatementInvalid => e
      search_word = "--error--"
      create_search_log(search_word,search_type,user_ip)
  end
end
