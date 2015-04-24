class ItunesController < ApplicationController
  def search
  end

  def results
    @results = Itunes.new.movies(title)
  end

  private

  def title
    params.require(:title)
  end
end
