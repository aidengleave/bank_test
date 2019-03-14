require 'account'

RSpec.describe Account do
  it 'has a default balance of 0' do
    account = Account.new(0)
    expect(account.balance).to eq(0)
  end
end

RSpec.describe '#deposit' do
  it 'user can add money to their account balance' do
    account = Account.new(0)
    expect { account.deposit(1) }.to change { account.balance }.by(1) 
  end
end
