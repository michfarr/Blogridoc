require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to have_many(:comments) }
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:subtitle) }
  it { is_expected.to validate_presence_of(:content) }
  it { is_expected.to validate_presence_of(:image) }
end
