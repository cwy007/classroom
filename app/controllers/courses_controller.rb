class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit]

  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      flash[:notice] = "course created successfully!"
      redirect_to courses_path
    else
      render "new"
    end
  end

  private

    def course_params
      params.require(:course).permit(:title, :description)
    end

    def set_course
      @course = Course.find(params[:id])
    end
end
