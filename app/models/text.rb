class Text < ApplicationRecord
  has_many :words, dependent: :nullify
  after_create :create_words

private


def create_words
    words = self.description.split(/\W+/)
        words.each do |splitted|
      self.words.create(name: splitted, translation: '')
        end
    end
end
