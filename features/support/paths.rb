def path_to(page_name)
  case page_name
    when /^New Request$/
     new_request_path
    when /Nueva Peticion de Software/
      new_peticionsoftware_path
    when /Ver Peticiones de Software/
      peticionsoftwares_path
    end
    
end
