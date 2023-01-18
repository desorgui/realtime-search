require 'rails_helper'

RSpec.describe Post, type: :model do
  user = User.create(email: 'desorguishny@gmail.com', password: '123456', password_confirmation: '123456')
  subject { Post.create(title: 'Title', description: 'Description', user_id: user.id) }

  before { subject.save }

  describe 'Validations' do
    it 'Should not be nil' do
      expect(subject).to_not be nil
    end

    it 'Should have a valid title' do
      expect(subject.title).to eq('Title')
    end

    it 'Should have a valid description' do
      expect(subject.description).to eq('Description')
    end

    it 'Should not be valid without a title' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'Should not be valid without a description' do
      subject.description = nil
      expect(subject).to_not be_valid
    end
  end
end