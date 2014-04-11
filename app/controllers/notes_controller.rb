class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to root_url, notice: "Thank you for Adding Notes!"
    else
      render "new"
    end
  end

  def note_params

  end

end
