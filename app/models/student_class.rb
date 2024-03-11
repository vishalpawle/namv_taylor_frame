class StudentClass
  include Mongoid::Document
  include Mongoid::Timestamps
  field :classname, type: String
  field :school, type: String
  validates :classname, :school, :presence => true
  has_many :students
  has_and_belongs_to_many :teachers
end
