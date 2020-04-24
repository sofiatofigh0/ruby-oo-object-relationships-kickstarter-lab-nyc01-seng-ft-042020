require "pry"

class Backer

    attr_reader :name
    
    def initialize(name)
        @name=name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.map do |a| 
            if a.backer == self 
            a.project
            end
        end 
        # binding.pry
        # if a.backer == self 
        # a.backer
        # end
        # }
    end

end
