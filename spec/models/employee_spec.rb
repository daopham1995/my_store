require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe 'DB' do
    context 'create' do
      before do
        @employee = FactoryGirl.create :employee
      end

      it do
        message = /Email has already been taken/
        expect { FactoryGirl.create :employee, email: @employee.email }.to raise_error.with_message(message)
      end
    end

    context 'indexes' do
      it { should have_db_index(:email).unique(true) }
    end

    context 'columns' do
      it { should have_db_column(:email).of_type(:string).with_options(limit: 255, null: false) }
      it { should have_db_column(:name).of_type(:string).with_options(limit: 50, null: false) }
      it { should have_db_column(:password_digest).of_type(:string) }
    end

    context 'validation' do
      it 'invalid emails' do
        invalid_emails = %w(user@foo,com
                            user_at_foo.org
                            example.user@foo.
                            foo@bar_baz.com
                            foo@bar+baz.com
                            foo@bar..com)
        is_expected.not_to allow_value(*invalid_emails).for(:email)
      end

      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_presence_of(:email) }
      it { is_expected.to validate_presence_of(:password) }
      it { is_expected.to validate_length_of(:password).is_at_least(6) }
    end
  end
end
