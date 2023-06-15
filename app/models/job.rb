class Job < ApplicationRecord
  belongs_to :client
  def short_description(words_limit)
    words = description.split(' ').first(words_limit)
    truncated_text = words.join(' ')
    truncated_text += ' ...' if words.length < description.split(' ').length
    truncated_text
  end
end
