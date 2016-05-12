class SearchController < ApplicationController
  def index
    if params[:q].nil?
      @articles = Article.all
    else
      @articles = Article.search(params[:q])
      # Save the search term in the database and the result count
    end
  end
end
