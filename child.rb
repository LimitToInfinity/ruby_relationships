class Child

    attr_reader :name, :age, :parent
    @@all = []

    def initialize name, age, parent
        @name = name
        @age = age
        @parent = parent
        @@all << self
    end

    def self.all
        @@all
    end

    # def chore parent, task
    #     Chore.new parent, self, task
    # end
    # we don't want children to create their chores so this method won't be made

    def chores
        Chore.all.map do |chore|
            if chore.child == self
                chore.task
            end
        end.compact
    end

end