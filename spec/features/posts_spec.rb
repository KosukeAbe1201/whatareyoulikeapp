require 'rails_helper'
require 'support/quiz_support'
require 'support/login_support'

RSpec.feature "Posts", type: :feature do
  given(:user) { build(:user) }
  include QuizSupport
  include LoginSupport

  background do
    signup(user)
  end

  scenario "user makes quiz correctly" do
    click_link "クイズを作る"
    expect(current_path).to eq "/question1"
    expect(page).to have_content "Question 1"
    fill_all_question(1)
    expect(current_path).to eq "/question2"
    expect(page).to have_content "Question 2"
    fill_all_question(2)
    expect(current_path).to eq "/question3"
    expect(page).to have_content "Question 3"
    fill_all_question(3)
    expect(current_path).to eq "/question4"
    expect(page).to have_content "Question 4"
    fill_all_question(4)
    expect(current_path).to eq "/question5"
    expect(page).to have_content "Question 5"
    fill_all_question(4)
    expect(current_path).to eq "/keywords/new"
    fill_keyword("keyword")
    expect(current_path).to eq "/keywords/show"
  end

  scenario "user makes quiz not correctly" do
    click_link "クイズを作る"
    fill_in "post[question]", with: ""
    fill_in "post[answer1]", with: "answer1"
    fill_in "post[answer2]", with: "answer2"
    fill_in "post[answer3]", with: "answer3"
    fill_in "post[answer4]", with: "answer4"
    choose 1
    click_button "NEXT QUESTION"
    expect(current_path).to eq "/posts"
  end
end
