class Api::V1::JournalsController < ApplicationController
  before_action :set_journal, only: [:show, :update, :destroy]

  def index
    @journals = Journal.all

    render json: @journals
  end

  def show
    render json: @journal
  end

  def create
    @journal = Journal.new(journal_params)

    if @journal.save
      render json: @journal
    else
      render json: @journal.errors
    end
  end

  def update
    if @journal.update(journal_params)
      render json: @journal
    else
      render json: @journal.errors
    end
  end

  def destroy
    @journal_entry = Journal.find(params["id"])
    @journal_entry.destroy
    render json: @journal_entry
  end

  private

  def set_journal
    @journal = Journal.find(params[:id])
  end

  def journal_params
    params.require(:journal).permit(:content)
  end
end
