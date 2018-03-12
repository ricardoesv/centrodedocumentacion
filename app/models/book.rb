class Book < ActiveRecord::Base
  validates :titulo, presence: { message: "es un campo obligatorio" }
end

