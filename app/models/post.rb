class Post < ApplicationRecord
  validates_presence_of :date, :rationale
end

# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  date       :date
#  rationale  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
