require 'spec_helper'

describe Note do
  it { should validate_presence_of :title }
  it { should validate_presence_of :content }
  it { should have_many :tags }
  it { should belong_to :author }
end
