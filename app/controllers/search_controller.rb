class SearchController < ApplicationController
  def input
  end

  def result
  	@user = User.full_text_search(params[:search_text])
  	
  end
end
