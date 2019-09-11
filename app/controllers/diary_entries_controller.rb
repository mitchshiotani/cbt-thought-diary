class DiaryEntriesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @diary_entries = DiaryEntry.all
  end

  def show
    @diary_entry = DiaryEntry.find(params[:id])
  end

  def new
    session[:diary_entry_params] ||= {}
    @diary_entry = DiaryEntry.new(session[:diary_entry_params])
    @diary_entry.current_step = session[:diary_entry_step]
    @emotions = Emotion.all
  end

  def create
    session[:diary_entry_params].deep_merge!(diary_entry_params) if diary_entry_params
    @diary_entry = DiaryEntry.new(session[:diary_entry_params])
    @diary_entry.current_step = session[:diary_entry_step]
    @diary_entry.date = Date.today
    # params[:emotions]. each do |k, _v|
    #   @diary_entry.emotions << Emotion.find(k)
    # end
    if @diary_entry.valid?
      if params[:back_button]
        @diary_entry.previous_step
      elsif @diary_entry.last_step?
        @diary_entry.save if @diary_entry.all_valid?
      else
        @diary_entry.next_step
      end
      session[:diary_entry_step] = @diary_entry.current_step
    end
    if @diary_entry.new_record?
      render :new
    else
      session[:diary_entry_step] = session[:diary_entry_params] = nil
      flash[:notice] = "Diary Entry saved!"
      redirect_to @diary_entry
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
    if params.include?(:diary_entry)
      params.require(:diary_entry).permit!
    end
  end
end
