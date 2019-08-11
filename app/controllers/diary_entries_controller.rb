class DiaryEntriesController < ApplicationController
  def index
    @diary_entries = DiaryEntry.all
  end

  def show
    @diary_entry = DiaryEntry.find(params[:id])
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
