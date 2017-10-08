class CoursesController < ApplicationController
  def index
  	@search_term = params[:search] || 'python'
  	@courses = Course.for(@search_term)
  end
end
