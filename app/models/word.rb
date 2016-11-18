class Word < ApplicationRecord
  belongs_to :text, optional: true
  validate :check_existing

  private

  def check_existing

    if Word.where("name = ?", name) != []
      errors.add(:name, "word already exist")
      return false
    end
  end


end
