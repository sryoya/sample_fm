class TopController < ApplicationController
  def index
    @results = get_track_by_random
  end
end
