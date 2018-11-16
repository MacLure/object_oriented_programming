# Exercise 1: Bank Account

class BankAccount
    def initialize(balance, interest_rate)
        @balance = balance
        @interest_rate = interest_rate
    end


    def balance
        return @balance
    end

    def interest_rate
        return @interest_rate
    end

    def deposit(ammount)
        @balance += ammount
    end

    def withdraw(ammount)
        @balance -= ammount
    end

    def gain_interest
        @balance = @balance + (1 + interest_rate)
    end
end



my_account = BankAccount.new(100, 0.02)

puts my_account.balance
my_account.deposit(100)
puts my_account.balance
my_account.gain_interest
puts my_account.balance
