class Message < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :user
  acts_as_paranoid

  validates_presence_of :body, :conversation_id, :user_id
end
