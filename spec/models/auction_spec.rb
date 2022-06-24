require 'rails_helper'

RSpec.describe Auction, type: :model do
  let(:seller) {
    User.new(:email => "jane@doe.com", :password => "pw1234")
  }

  subject = FactoryBot.create :Auction

  describe 'Associations' do
    it { should belong_to(:user).without_validating_presence }
    it { should have_many(:bids) }
  end

  context 'When create an Auction ' do

    it { expect(subject).to be_valid }

    it 'The title is empty' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'The description is empty' do
      subject.description = nil
      expect(subject).to_not be_valid  
    end

    it 'The start date is empty' do
      subject.start_date = nil
      is_expected.to_not be_valid  
    end
    
    it 'The end date is empty' do
      subject.end_date = nil
      is_expected.to_not be_valid
    end  
  end
end
