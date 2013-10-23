Shop247::Application.routes.draw do
  get "homepage" => "application#homepage"
  get "auto" => "application#auto"
  get "medical" => "application#medical"
  get "project_idea" => "application#project_idea"
  get "approver" => "application#approver"
  get "mandates" => "application#mandates"
  get "approved_idea" => "application#approved_idea"
  get "core_team_tasks" => "application#core_team_tasks"
  post "get_quotation" => "application#get_quotation"
  root to: "application#homepage"
end
