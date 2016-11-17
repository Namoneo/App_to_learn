class TextsController < ApplicationController

def index
  @texts = Text.all
end

def new
  @text = Text.new
end

def create
  @text = Text.new(text_params)
  
  if @text.save
    redirect_to text_path(@text), notice: "Text successfully created"
  else
    render :new
  end
end

def show
  @text = Text.find(params[:id])
end

def destroy
  @text = Text.find(params[:id])

  @text.destroy

  redirect_to root_path
end


private

def set_text
  @text = Text.find(params[:id])
end

def text_params
  params.required(:text).permit(:name, :description)
end

end
