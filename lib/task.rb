class Task
  @@all_tasks = []

  def self.clear
    @@all_tasks = []
  end

  def initialize(description)
    @description = description
  end

  def description
    @description
  end

  def save
    @@all_tasks.push(self)
  end

  def self.all
    @@all_tasks
  end
end
