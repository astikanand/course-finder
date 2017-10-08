class CoursesController < ApplicationController
  def index
  	@search_term = params[:course] || 'python'
  	@courses = Course.for(@search_term)
  end
end
