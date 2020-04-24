require "pry"

class Project

    attr_reader :title

    def initialize(title)
        @title=title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.map do |a| 
            if a.project == self 
            a.backer
            end
        end
    end

end
