class Reply < ApplicationRecord
  belongs_to :thread, polymorphic: true
  has_many :replies, as: :thread
end
