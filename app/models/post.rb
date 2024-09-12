class Post < ApplicationRecord
  searchkick word_start: [:title, :content, :tags]  # Enables searchkick features like suggestions, partial matches

  def search_data
    {
      title: title,
      content: content,
      author: author,
      tags: tags,
      published_at: published_at
    }
  end
end
