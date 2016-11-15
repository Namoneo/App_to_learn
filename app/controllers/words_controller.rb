class WordsController < ApplicationController

  before_action :set_user

  def index
    @word = Word.new
    @words = @user.words
  end

  def create
    @word = @user.words.build(word_params)
    @word.save!

    respond_to do |format|
      format.html { redirect_to user_words_path(@user) }
      format.js # render words/create.js.erb
    end
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy!

    @words = @user.words

    respond_to do |format|
      format.html { redirect_to user_words_path(@user) }
      format.js # render words/create.js.erb
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def word_params
    params.require(:word).permit(:name)
  end
end
