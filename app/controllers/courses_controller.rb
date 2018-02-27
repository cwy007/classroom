class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

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

  def update
    if @course.update(course_params)
      flash[:notice] = "course updated successfully!"
      redirect_to course_path(@course)
    else
      render "edit"
    end
  end

  def destroy
    @course.destroy
    flash[:alert] = "course deleted!"
    redirect_to courses_path
  end

  private

    def course_params
      params.require(:course).permit(:title, :description)
    end

    def set_course
      @course = Course.find(params[:id])
    end
end
