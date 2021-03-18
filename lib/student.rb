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
  
=begin
  {:twitter=>"someone@twitter.com",
 :linkedin=>"someone@linkedin.com",
 :github=>"someone@github.com",
 :blog=>"someone@blog.com",
 :profile_quote=>
  "\"Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.\" - Rumi",
 :bio=>
  "I was in southern California for college (sun and In-n-Out!), rural Oregon for high school (lived in a town with 1500 people and 3000+ cows), and Tokyo for elementary/middle school."}
=end

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |key, value|
      self.twitter = value if :twitter
      self.linkedin = value if :linkedin
      self.github = value if :github
      self.blog = value if :blog
      self.profile_quote = value if :profile_quote
      self.bio = value if :bio
      #binding.pry
    end
  end

  def self.all
    @@all
  end
end