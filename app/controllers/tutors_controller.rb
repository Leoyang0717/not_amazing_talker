# frozen_string_literal: true

# ig Tutors
class TutorsController < ApplicationController
  before_action :tutor, only: %i[edit update show]

  def index
    @tutors = Tutor.all
  end

  def new
    @tutor = Tutor.new
  end

  def create
    @tutor = Tutor.new(tutor_params)
    return redirect_to '/tutors', notice: '導師建立成功' if @tutor.save

    render :new
  end

  def edit; end

  def update
    return redirect_to tutors_path, notice: '導師修改成功' if @tutor.update(tutor_params)

    render :edit
  end

  def destroy; end

  def tutor_params
    params.require(:tutor).permit(:name, :address, :phone)
  end

  def tutor
    @tutor ||= Tutor.find(params[:id])
  end
end
