require 'account'
RSpec.describe 'bank tech test feature spec' do
  it 'prints statement' do
    account = Account.new
    account.deposit(1000, '10/01/2012')
    account.deposit(2000, '13/01/2012')
    account.withdraw(500, '14/01/2012')
    statement = Statement.new(account)

    expect { statement.print }.to output(
      '   date    ||  credit ||  debit  || balance \n
      14/01/2012 ||         ||  500.00 || 2500.00 \n
      13/01/2012 || 2000.00 ||         || 3000.00 \n
      10/01/2012 || 1000.00 ||         || 1000.00'
    ).to_stdout
  end
end
