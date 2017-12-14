require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'db' do
    context 'create' do
      subject { FactoryGirl.create :category }

      it do
        expect { subject }.to change(Category, :count).by(1)
        expect(subject).to_not be_nil
      end
    end

    context 'columns' do
      it { should have_db_column(:name).of_type(:string).with_options(limit: 50, null: false) }
      it { should have_db_column(:description).of_type(:string) }
    end

    context 'attributes' do
      subject(:category) { Category.new(name: 'category', description: 'description') }

      it do
        expect(category).to have_attributes(name: 'category')
        expect(category).to have_attributes(description: 'description')
      end
    end

    context 'validation' do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_uniqueness_of(:name) }
      it { is_expected.to validate_length_of(:name).is_at_most(50) }
    end
  end
end
