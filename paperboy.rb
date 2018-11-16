class Paperboy

    def initialize (name)
        @experience = 0
        @earnings = 0.00
        @quota = 50
        @name = name
        @delivered = 0
    end

    def quota
        @quota += (@experience / 2)
    end

    def deliver(start_address, end_address)
        if start_address > end_address
            puts "#{@name} got confused.  Maybe the end address should be greater than the start address..."
        end

        deliveries =  end_address - start_address

        if deliveries > @quota
            @earnings += 0.25 * @quota
            @earnings += (deliveries - @quota) * 0.5
        else
            @earnings += deliveries * 0.5
            @earnings -= 2.00

        end
        quota
    end

    def report
        return "I'm #{@name}, I've delivered #{@delivered} papers and I've earned $#{@earnings} so far!"
    end

end

tommy = Paperboy.new("Tommy")
puts tommy.report
tommy.deliver(100, 99)
puts tommy.report
