class Student
  include Mongoid::Document
  include Mongoid::Timestamps
  field :firstname, type: String
  field :lastname, type: String
  field :mobile, type: String
  field :gender, type: String
  field :dateofbirth, type: Date
  validates :firstname, :lastname, :mobile, :dateofbirth, :gender, :presence => true
end
