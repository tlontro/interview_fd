# frozen_string_literal: true

# module responsible to instantiate pages
module Pages
  def login_page
    @login_page ||= LoginPage.new
  end
end

World(Pages)
