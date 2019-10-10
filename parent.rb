class Parent

    attr_reader :name
    @@all = []

    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def child name, age
        Child.new name, age, self
    end

    def chore name, task
        Chore.new self, name, task
    end

end