module ApplicationHelper
    def devise_mapping
  Devise.mappings[:user]
end

def resource_name
  devise_mapping.name
end

def resource_class
  devise_mapping.to
end
    
def flash_class(type)
   case type
       when :alert
            "alert-error"
       when :notice
            "alert-success"
        else
            ""
       end
end
    
end
