class ProjectPresenter < Showcase::Presenter
  presents :project

  def background_image_style
    picture = object.pictures.first
    if picture
      url = picture.image.thumb('500x300').url
      "background-image: url(\"#{url}\")"
    end
  end
end

