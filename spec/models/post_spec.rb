require 'spec_helper'

describe Post do
  describe "#upvotes_count" do
    context "when there are 3 upvotes" do
      let(:post) { Post.create }
      before do
        post.votes.create(polarity: true)
        post.votes.create(polarity: true)
        post.votes.create(polarity: true)
      end
      it "should return 3" do
        expect(post.upvotes_count).to eq 3
      end
    end

    context "when there are 0 upvotes" do
      it "should return 0" do

      end
    end
  end

  describe "#downvotes_count" do
    context "when there are 3 downvotes" do
      let(:post) { Post.create }
      before do
        post.votes.create(polarity: false)
        post.votes.create(polarity: false)
        post.votes.create(polarity: false)
      end
      it "should return 3" do
        expect(post.downvotes_count).to eq 3
      end
    end

    context "when there are 0 downvotes" do
      it "should return 0" do

      end
    end
  end
end
