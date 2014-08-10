class Page < ActiveRecord::Base
  active_admin_translates :title, :content, :date
  has_seo_meta :title
end

