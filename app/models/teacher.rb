class Teacher
  include Mongoid::Document
  include Mongoid::Timestamps
  field :firstname, type: String
  field :lastname, type: String
  field :mobile, type: String
  field :dateofbirth, type: Date
  field :gender, type: String
  validates :firstname, :lastname, :mobile, :dateofbirth, :gender, :presence => true
  belongs_to :user
  has_and_belongs_to_many :student_classes

end
