class DiaryEntriesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @diary_entries = DiaryEntry.all
  end

  def show
    @diary_entry = DiaryEntry.find(params[:id])
  end

  def new
    @diary_entry = DiaryEntry.new
  end

  def create
    @diary_entry = DiaryEntry.new(diary_entry_params)
    if @diary_entry.create
      redirect_to diary_entry_path(@diary_entry)
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def diary_entry_params
    params.require(:diary_entry).permit!
  end
end
