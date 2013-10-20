Shop247::Application.routes.draw do
  get "homepage" => "application#homepage"
  get "auto" => "application#auto"
  get "medical" => "application#medical"
  post "get_quotation" => "application#get_quotation"
  root to: "application#homepage"
end
