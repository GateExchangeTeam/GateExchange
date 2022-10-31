class Tag < ApplicationRecord
  validates :tag_name, presence:true, allow_nil:false
end
