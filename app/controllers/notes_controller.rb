class NotesController < ApplicationController
    def new
    end
    
    def create
        note = Note.new
        note.star = params[:star]
        note.nation = params[:nation]
        note.save
        redirect_to '/notes/index'
    end
    
    def index
        @notes = Note.all
    end
    
    def show
        @note = Note.find params[:id]
    end
    
    def edit
        @note = Note.find params[:id]
        # 하나의 페이지를 찾기 위함
    end
    
    def update
        note = Note.find params[:note_id]
        note.star = params[:star]
        note.nation = params[:nation]
        note.save
        redirect_to '/notes/index'
        #  #안에 있는건 문법
    end
    
    def destroy
        @note = Note.find params[:id]
        @note.destroy
        redirect_to '/notes/index'
    end
end
