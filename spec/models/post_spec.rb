require 'rails_helper'

describe Post do
  it { should validate_presence_of(:title) }
  it { should validate_length_of(:title).is_at_most(255) }
  it { should validate_presence_of(:content) }
end
