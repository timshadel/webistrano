# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def web_friendly_text(text)
    return text if text.blank?
    h(text).gsub("\n",'<br />').gsub("\r",'')
  end
  
  def hide_password_in_value(config)
    if !config.prompt? && config.name.match(/password/) 
      '************'
    else
      config.value
    end
  end
  
  def current_stage_project_description
    "#{link_to h(current_project.name), project_path(current_project)}/#{link_to h(current_stage.name), project_stage_path(current_project, current_stage)}"
  end
  
  def user_info(user)
    link_to user.login, user_path(user)
  end
  
end
