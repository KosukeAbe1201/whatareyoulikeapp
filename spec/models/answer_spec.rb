require 'rails_helper'
RSpec.describe Answer, type: :model do
  let(:valid_answer) { create(:answer) }
  let(:invalid_answer) { create(:answer, name: "") }
  let!(:post) { create(:post, user_id: 1) }

  describe "#search_question" do
    context "when it has a post" do
      it "returns correct data" do
          expect(Answer.search_question(1, 1)).to eq post
      end
    end

    context "when it does not have any posts" do
      it "returns nil" do
          expect(Answer.search_question(1, 2)).to eq nil
      end
    end
  end

  describe "(validation)" do
    it "is valid with a name" do
      expect(valid_answer).to be_valid
    end

    it "is invalid without a name" do
      expect(invalid_answer).not_to be_valid
    end

    context "dupulicated keyword" do
      let!(:valid_answer1) { create(:keyword) }
      let!(:valid_answer2) { create(:keyword) }

      it "is invalid with same name" do
        expect(valid_answer2).not_to be_valid
      end
    end
  end
end
