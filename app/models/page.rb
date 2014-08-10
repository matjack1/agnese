class Page < ActiveRecord::Base
  active_admin_translates :title, :content, :date
end

