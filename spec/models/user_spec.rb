require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a login_name, password and role' do
    user = build(:user)
    expect(user).to be_valid
  end
end
