module ApplicationHelper
  def highlight(text)
    v = text.split(/\W+/)
    to_return = []
    v.each do |word|
      w = Word.find_by name: word
      if w
        if w.know
          to_return << "<span style=\"color: red\">#{word} </span> "
        else
          to_return << word
        end
      else
        to_return << word
      end
    end
    to_return.join(' ').html_safe
  end
end
