require 'faker'
require 'csv'
require 'date'

## Step 1
class Person
attr_accessor :first_name, :last_name, :email, :phone, :created_at

  def initialize(first_name=Faker::Name.first_name, last_name=Faker::Name.last_name, email=Faker::Internet.free_email, phone=Faker::PhoneNumber.phone_number, created_at=Faker::Time.between(DateTime.now - 1, DateTime.now))
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at
  end
end



## Step 2
def create_group(num)
    group = []
    num.times { group << person = Person.new }
    group
end

people = create_group(15)

## Step 3
class PersonWriter

  def initialize(file_name, arr)
    @file_name = file_name
    @arr = arr
  end

  def create_csv
    CSV.open("#{@file_name}", "wb") do |csv|
      @arr.each { |object| csv << [object.first_name, object.last_name, object.email, object.phone, object.created_at]}
    end
  end
end


person_writer = PersonWriter.new("people.csv", people)
person_writer.create_csv


## Step 4
class PersonParser

  def initialize(file_name)
    @file_name = file_name
  end

  def csv_to_RubyObject
  people = []
    CSV.foreach(@file_name) do |row|
    people << Person.new(row[0], row[1], row[2], row[3], DateTime.parse(row[4]))
    end
  people
  end
end



parser = PersonParser.new('people.csv')
people = parser.csv_to_RubyObject
p people[0..10]


## change first person info to my info
## rewrite after making a change

people[0] = Person.new("karla", "robinson", "karla@gmail.com", "123456789", DateTime.parse("2015-8-24"))
people[0]

person_writer = PersonWriter.new("people_altered.csv", people)
person_writer.create_csv



















