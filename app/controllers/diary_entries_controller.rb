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
  end

  def create
    session[:order_params].deep_merge!(params[:order]) if params[:order]
      @diary_entry = DiaryEntry.new(session[:diary_entry_params])
      @diary_entry.current_step = session[:diary_entry_step]
      @diary_entry.date = Date.today
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
    params.require(:diary_entry).permit!
  end
end
