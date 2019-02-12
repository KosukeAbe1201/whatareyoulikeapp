require 'rails_helper'
require 'support/quiz_support'
require 'support/login_support'

RSpec.feature "Posts", type: :feature do
  given(:user) { build(:user) }
  include QuizSupport
  include LoginSupport

  background do
    signup(user)
    click_link "クイズを作る"
    fill_all_question(2)
    fill_all_question(2)
    fill_all_question(3)
    fill_all_question(4)
    fill_all_question(4)
    fill_keyword("keyword")
  end

  scenario "user answers quiz correctly" do
    visit root_path
    click_link "クイズに答える"
    expect(current_path).to eq "/keywords/top"
    fill_in "keyword", with: "keyword"
    click_button "決定"
    expect(current_path).to eq "/answers/show"
    fill_in "answer[name]", with: "answerer"
    click_button "決定"
    choose 2
    click_button "NEXT QUESTION"
    choose 2
    click_button "NEXT QUESTION"
    choose 3
    click_button "NEXT QUESTION"
    choose 4
    click_button "NEXT QUESTION"
    choose 4
    click_button "NEXT QUESTION"
    expect(page).to have_content "5問中5問正解です。"
  end
end
