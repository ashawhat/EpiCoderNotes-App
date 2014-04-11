class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def show
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to '/notes', notice: "Thank you for Adding Notes!"
    else
      render "new"
    end
  end

  def note_params
    params.require(:note).permit(:title, :content, :tags_id, :author_id)
  end

end
