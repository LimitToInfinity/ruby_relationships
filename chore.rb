class Chore

    attr_reader :parent, :child
    attr_accessor :task
    @@all = []

    def initialize parent, child, task
        @parent = parent
        @child = child
        @task = task
        @@all << self
    end

    def self.all
        @@all
    end

end