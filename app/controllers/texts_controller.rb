class TextsController < ApplicationController
  before_action :authenticate_user!
  
def index
  @texts = Text.all
end

def new
  @text = Text.new
end

def create

  @text = Text.new(text_params)

  if @text.save
    message = "Text successfully created."
    if @text.words.count > 0
      message += " #{@text.words.count} #{@text.words.count > 1 ? 'words were' : 'word was'}  inserted"
    else
      message += ' No words were inserted.'
    end

    redirect_to text_path(@text), notice: message
  else
    render :new
  end
end

def show
  @text = Text.find(params[:id])
  @words = @text.words
end

def destroy
  @text = Text.find(params[:id])

  @text.destroy

  redirect_to root_path
end


private

def set_word
  params.required(:word).permit(:name, :translation, :text_id)
end

def set_text
  @text = Text.find(params[:id])
end

def text_params
  params.required(:text).permit(:name, :description)
end

end
