require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:bad_review) { Review.new }
  let(:good_review) { Review.new }

  describe "ActiveModel validations" do
    it { expect(bad_review).to validate_presence_of(:email) }
    it { expect(bad_review).to validate_presence_of(:created_at) }
    it { expect(bad_review).to validate_presence_of(:rating) }
  end
end
