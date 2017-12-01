require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :desc }
  it { should validate_presence_of :price }
  it { should belong_to :user }
  it { should belong_to :category }

end
