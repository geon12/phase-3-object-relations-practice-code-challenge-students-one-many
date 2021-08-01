class Cohort < ActiveRecord::Base
    has_many :students
    def add_student(name:,age:)
        Student.create(name:name,age:age,cohort_id:self.id)
    end

    def average_age
        self.students.average(:age)
    end

    def total_students
        self.students.size
    end

    def self.sort_by_mod
        self.order("current_mod")
    end

    def self.biggest
        Cohort.joins(:students).group(:cohort_id).order("COUNT(cohort_id)  DESC").limit(1)[0]
    end
end