Rails.application.routes.draw do
  mount ComponentTwo::Engine => "/component_two"
end
