class ProjectPresenter < Showcase::Presenter
  include Showcase::Traits::LinkTo

  link_to do |c|
    c.url h.project_path(self)
  end

  def background_image_style
    picture = object.pictures.first
    if picture
      url = picture.image.thumb('414x286#').url
      "background-image: url(\"#{url}\")"
    end
  end
end

