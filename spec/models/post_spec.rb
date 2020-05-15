require "rails_helper"

RSpec.describe Post, type: :model do
  describe "creation" do
    before do
      @post = Post.create(date: Date.today, rationale: "Because I said so")
    end
    it "can be created" do
      expect(@post).to(be_valid)
    end

    it "cannot be created without a date and rationale" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end
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
