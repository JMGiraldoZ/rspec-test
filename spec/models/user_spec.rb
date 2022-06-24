require 'rails_helper'

RSpec.describe User, :type => :model do
  subject { 
         described_class.new(password: "password", 
                             email: "juan@correo.com"
         )  
  }
  
  describe "Validations" do
    context "When log with invalid attributes" do
      expect(subject).to be_valid
    end

    context "When no enter a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    context "When no enter an email" do
      subject.email = nil
      expect(subject).to_not be_valid
      
    end
  end
end
