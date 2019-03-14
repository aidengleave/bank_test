require 'account'

RSpec.describe Account do
  it 'has a default balance of 0' do
    account = Account.new(0)
    expect(account.balance).to eq(0)
  end
end
