class Page < ActiveRecord::Base
  active_admin_translates :title, :content, :date do
    has_seo_meta :title
  end
end

