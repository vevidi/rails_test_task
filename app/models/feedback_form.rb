class FeedbackForm < ApplicationRecord

  mount_uploader :attachment, AttachmentUploader

  validates :age, numericality: true, presence: true, inclusion: {in: 17..65}
  validates :name, presence: true, format: {with: /\A[A-Z][a-z]*\s[A-Z][a-z]*\z/i, message: 'Two space separated upcase words please'}
  validates :appointment_date, presence: true

end
