class WordsController < ApplicationController
  before_action :authenticate_user!


  def index
    @word = Word.new
    @words = Word.all
  end

  def create
    @word = Word.new( word_params )

  
    if @word.save
      respond_to do |format|
        format.html { redirect_to words_path() }
        format.js { } # render words/create.js.erb
      end
    else
      # todo> show an error
      respond_to do |format|
        format.html { redirect_to words_path() }
        format.js { render 'error' } # render words/create.js.erb
      end
    end
  end

  def update
    @word = Word.find(params[:id])

    @word.update_attribute(:translation, params[:word][:translation])
    respond_to do |format|
      format.js { } # render words/create.js.erb
    end
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy

    @words = @user.words

    respond_to do |format|
      format.html { redirect_to words_path }
      format.js {}# render words/create.js.erb
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def word_params
    params.require(:word).permit(:name, :translation, :text_id)
  end
end
