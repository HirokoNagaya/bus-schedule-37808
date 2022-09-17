class GraphsController < ApplicationController
  def index
    @chart = {"国語" => 10, "算数" => 20, "理科" => 30, "社会" => 40}
  end
end
