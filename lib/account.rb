require 'date'

class Account

  attr_accessor :statement, :balance

  def initialize()
    @statement = []
    @balance = 0
    make_deposit
  end

  def make_deposit
    puts "How much would you like to deposit?"
    deposit = gets
    @balance += deposit
    @statement << {date: DateTime.now, credit: deposit, debit: 0, balance: @balance}
  end

  def make_withdrawal
    puts "How much would you like to withdraw?"
    withdrawal = gets.chomp.to_i
    @balance -= withdrawal
    @statement << {date: DateTime.now, credit: 0, debit: withdrawal, balance: @balance}
  end

  def show_balance
    puts "Your current balance is £#{@balance}"
  end

  def show_statement
    puts "date              - debit - credit - balance"
    puts "---------------------------------"
    @statement.reverse_each do |line|
      puts "#{line[:date].strftime("%d/%m/%y %H:%M:%S")} - £#{line[:debit]} - £#{line[:credit]} - £#{line[:balance]}"
    end
  end

  def process(selection)
    case selection
    when "1"
      make_deposit
    when "2"
      make_withdrawal
    when "3"
      show_balance
    when "4"
      show_statement
    when "5"
      exit
    else
      puts "Not a valid selection, please try again."
    end
  end
end
