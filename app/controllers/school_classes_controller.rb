class SchoolClassesController < ApplicationController
    before_action :find_school_class, only: [:show, :edit, :update]
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def show

  end

  def update
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def create
    school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(school_class)
  end

  def edit

  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end
end
