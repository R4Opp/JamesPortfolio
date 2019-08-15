module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_title_defaults
  end

  def set_title_defaults
    @page_title = "JamesPortfolio | My portfolio website"
    @seo_keywords = "James Hudson portfolio"
  end
end
