# ProjectBacker (project,backer)
require 'pry'

class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        backers = []
        ProjectBacker.all.each do |projects|
            if projects.project == self
            backers << projects.backer
        end 
      end 
      backers
    end
end