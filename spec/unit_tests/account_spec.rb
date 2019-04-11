require 'account'

RSpec.describe Account do
  subject(:account) { described_class.new(0) }

  it 'has a default balance of 0' do
    expect(subject.balance).to eq(0)
  end
  
  context '#deposit' do
    it 'user can add money to their account balance' do   
      expect { subject.deposit(1, '10/01/2012') }.to change { subject.balance }.by(1)
    end
  end

  context '#withdraw' do
    it 'user can remove money from their account' do
      expect { account.withdraw(1, '11/01/2012') }.to change { account.balance }.by(-1)
    end
  end
end
