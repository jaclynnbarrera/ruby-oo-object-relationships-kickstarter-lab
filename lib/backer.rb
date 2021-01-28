# ProjectBacker (project,backer)
require 'pry'


class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end
    
    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        backed_projects = []
        ProjectBacker.all.each do |projects|
            if projects.backer == self
                backed_projects << projects.project
            end 
        end 
      backed_projects
    end
end
