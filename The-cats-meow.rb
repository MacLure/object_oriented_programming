


class Cat

    def initialize(name, preferred_food, meal_time)
        @name = name
        @preferred_food = preferred_food
        @meal_time = meal_time
    end

    def name
        return @name
    end

    def preferred_food
        return @preferred_food
    end

    def meal_time
        return @meal_time
    end

    def eats_at
        if @meal_time < 12
            return "#{@meal_time} AM"
        else
            return "#{@meal_time - 12} PM"
        end
    end

    def meow
        return "Meow, I'm #{@name}.  I eat #{@preferred_food} at #{eats_at}"
    end
end

twiggy = Cat.new("Twiggy", "lego", 5)
felix = Cat.new("Felix", "i dunno", 23)

puts twiggy.meow
puts felix.meow


