require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.create(email: 'desorguishny@gmail.com', password: '123456', password_confirmation: '123456') }

  before { subject.save }

  describe 'Validations' do
    it 'The user should not be nil' do
      expect(subject).to_not be nil
    end

    it 'Should have a valid email' do
      expect(subject.email).to eq('desorguishny@gmail.com')
    end

    it 'Should have a valid password' do
      expect(subject.password).to eq('123456')
    end
  
    it 'Should not be valid without an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'should Not be valid if the password is less than 6 characters' do
      subject.password = '12345'
      expect(subject).to_not be_valid
    end

    it 'Should not be valid if password and password_confirmation do not match' do
      subject.password_confirmation = '1234567'
      expect(subject).to_not be_valid
    end
  end
end