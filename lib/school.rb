require 'pry'
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :roster
  attr_reader :name

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade].push(name)
    else @roster[grade] = [name]
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted_values_roster = {}
    @roster.each do |grade, kids|
      sorted_values_roster[grade] = kids.sort
    end
    sorted_values_roster
  end

end
