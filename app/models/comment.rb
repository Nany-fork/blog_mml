class Comment < ApplicationRecord
  include Visible

  belongs_to :article
  validates :body, format: {with: /[a-zA-Z]/, message: "Only allows letters"}
end
