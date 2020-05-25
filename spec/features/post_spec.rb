require "rails_helper"
require "pry"

describe "navigate" do
  before do
    @user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Dwight", last_name: "Shrute")
    login_as(@user, :scope => :user)
  end

  describe "index" do
    before do
      visit posts_path
    end
    it "can be reached successfully" do
      expect(page.status_code).to eq 200
    end

    it "has the title of TimeTracker" do
      expect(page).to have_content(/TimeTracker/)
    end

    it "has a list of Posts" do
      post1 = Post.create(date: Date.today, rationale: "Post1", user_id: @user.id)
      post2 = Post.create(date: Date.today, rationale: "Post2", user_id: @user.id)
      visit posts_path
      expect(page).to have_content(/Post1/)
    end

    it "has an active class on Time Entries nav link" do
      expect(page).to have_link("Time Entries", href: "/posts", class: "active")
    end
  end

  describe "creation" do
    before do
      # @user = User.create(email: "test@test.com", password: "Testing.123!", password_confirmation: "Testing.123!", first_name: "Dwight", last_name: "Schrute")
      # login_as(@user, :scope => :user)
      visit new_post_path
    end

    it "has a new form that can be reached" do
      expect(page.status_code).to eq 200
    end

    it "has a page title of Create New Post" do
      expect(page).to have_content(/Create New Post/)
    end

    it "can be created from new form page" do
      fill_in "post[date]", with: Date.today
      fill_in "post[rationale]", with: "Some Rationale"
      click_on "Save"
      expect(page).to have_content("Some Rationale")
    end

    # it "will have a user associated with it" do
    #   fill_in "post[date]", with: Date.today
    #   fill_in "post[rationale]", with: "User_Association"
    #   click_on "Save"
    #   expect(@user.posts.last.rationale).to eq("User_Association")
    # end
  end
end
