class Word < ApplicationRecord
  belongs_to :text

def self
  words = Word.all
end

end
