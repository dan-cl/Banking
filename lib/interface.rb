require_relative 'account'


@line_width = 50

def open_account
  puts "Welcome to the Bank".center(@line_width)
  puts "========================================================".center(@line_width)
  puts "You need to make an inital deposit to open an account?".center(@line_width)
  @account = Account.new
  puts "========================================================".center(@line_width)
end

def interactive_menu
  loop do
    print_menu
    @account.process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "---------------------------------".center(@line_width)
  puts "Bank Menu".center(@line_width)
  puts "---------------------------------".center(@line_width)
  puts "1. Make a deposit".center(@line_width)
  puts "2. Make a withdrawal".center(@line_width)
  puts "3. Show balance".center(@line_width)
  puts "4. Show statement".center(@line_width)
  puts "5. Exit".center(@line_width)
end

open_account
interactive_menu
