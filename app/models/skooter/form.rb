module Skooter
  class Form < ApplicationRecord
    has_attached_file :document # ,
                      # storage: :s3,
                      # s3_credentials: proc { |a| a.instance.s3_credentials },
                      # s3_permissions: :private

    validates_attachment_content_type :document,
                                      content_type: 'application/xml'
    validates_attachment_size :document, in: 0..1024.kilobytes

    def s3_credentials
      {
        bucket: ENV['S3_BUCKET_NAME'],
        access_key_id: ENV['AWS_ACCESS_KEY_ID'],
        secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
        s3_region: ENV['AWS_REGION']
      }
    end
  end
end
