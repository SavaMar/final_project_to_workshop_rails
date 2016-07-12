class Post < ActiveRecord::Base
  belongs_to :user
  before_save do
    content.nil? ? 0 : self.short_content = content.slice(0..100)
  end
end
