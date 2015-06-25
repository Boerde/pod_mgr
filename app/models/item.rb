class Item < ActiveRecord::Base
has_attached_file :media
do_not_validate_attachment_file_type :media
end
