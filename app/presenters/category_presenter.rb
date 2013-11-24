class CategoryPresenter < Showcase::Presenter
  include Showcase::Traits::LinkTo

  def active_class(selected_id)
    if selected_id == object.id
      'active'
    end
  end
end

