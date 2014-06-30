class TaskOrder
  attr_accessor :jobs

    def initialize(*tasks)
      while tasks.empty?
        tasks = gets.chomp
      end

      @jobs = tasks.to_s
      sanitise
    end

    def sanitise
      @jobs.split(',')
    end

    def jobs
      @jobs
    end
end