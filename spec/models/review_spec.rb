require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:review) { Review.new }

  describe "ActiveModel validations" do
    it { expect(review).to validate_presence_of(:email) }
    it { expect(review).to validate_presence_of(:created_at) }
    it { expect(review).to validate_presence_of(:rating) }
  end
end
