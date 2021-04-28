class Course < ApplicationRecord
  has_many :enrollments,
    class_name: 'Enrollment',
    foreign_key: :course_id,
    primary_key: :id

  has_many :students,
    through: :enrollments,
    source: :student

  has_many :prerequisite,
    class_name: 'Course',
    foreign_key: :id,
    primary_key: :prereq_id

  belongs_to :instructor,
    class_name: 'User',
    foreign_key: :instructor_id,
    primary_key: :id
end
