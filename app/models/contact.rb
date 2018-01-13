class Contact < ApplicationRecord
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :body, length: { minimum: 10 }

  after_save :create_newsletter, on: [:create]

  private

  def create_newsletter
    if self.newsletter == true
      Newsletter.create!(
        email: self.email
      )
    end
  end
end
