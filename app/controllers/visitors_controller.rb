class VisitorsController < ApplicationController
  def index
    @articles = Article.last(2)
    redirect_to articles_path if logged_in?
  end
end
