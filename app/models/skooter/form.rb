module Skooter
  class Form < ApplicationRecord
    has_attached_file :document
    validates_attachment_content_type :document, content_type: 'application/xml'
  end
end