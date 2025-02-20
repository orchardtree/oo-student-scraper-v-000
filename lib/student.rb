require 'pry'
class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    @name = student_hash[:name]
    @location = student_hash[:location]
    @twitter = student_hash[:twitter]
    @linkedin = student_hash[:name]
    @github = student_hash[:name]
    @blog = student_hash[:name]
    @profile_quote = student_hash[:name]
    @bio = student_hash[:name]
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      self.new(student)
    end
  end

  def add_student_attributes(attributes_hash)
      self.twitter = attributes_hash[:twitter]
      self.linkedin = attributes_hash[:linkedin]
      self.github = attributes_hash[:github]
      self.blog = attributes_hash[:blog]
      self.profile_quote = attributes_hash[:profile_quote]
      self.bio = attributes_hash[:bio]
  end

  def self.all
    @@all
  end
end