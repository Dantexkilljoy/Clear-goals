Rails.application.routes.draw do
  devise_for :users
  # Routes for the Celebration resource:
  root to: "goals#index"
  # CREATE
  post("/insert_celebration", { :controller => "celebrations", :action => "create" })
          
  # READ
  get("/celebrations", { :controller => "celebrations", :action => "index" })
  
  get("/celebrations/:path_id", { :controller => "celebrations", :action => "show" })
  
  # UPDATE
  
  post("/modify_celebration/:path_id", { :controller => "celebrations", :action => "update" })
  
  # DELETE
  get("/delete_celebration/:path_id", { :controller => "celebrations", :action => "destroy" })

  #------------------------------

  # Routes for the Step resource:

  # CREATE
  post("/insert_step", { :controller => "steps", :action => "create" })
          
  # READ
  get("/steps", { :controller => "steps", :action => "index" })
  
  get("/steps/:path_id", { :controller => "steps", :action => "show" })
  
  # UPDATE
  
  post("/modify_step/:path_id", { :controller => "steps", :action => "update" })
  
  # DELETE
  get("/delete_step/:path_id", { :controller => "steps", :action => "destroy" })

  #------------------------------

  # Routes for the Action plan resource:

  # CREATE
  post("/insert_action_plan", { :controller => "action_plans", :action => "create" })
          
  # READ
  get("/action_plans", { :controller => "action_plans", :action => "index" })
  
  get("/action_plans/:path_id", { :controller => "action_plans", :action => "show" })
  
  # UPDATE
  
  post("/modify_action_plan/:path_id", { :controller => "action_plans", :action => "update" })
  
  # DELETE
  get("/delete_action_plan/:path_id", { :controller => "action_plans", :action => "destroy" })

  #------------------------------

  # Routes for the Goal resource:

  # CREATE
  post("/insert_goal", { :controller => "goals", :action => "create" })
          
  # READ
  get("/goals", { :controller => "goals", :action => "index" })
  
  get("/goals/:path_id", { :controller => "goals", :action => "show" })
  
  # UPDATE
  
  post("/modify_goal/:path_id", { :controller => "goals", :action => "update" })
  
  # DELETE
  get("/delete_goal/:path_id", { :controller => "goals", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  


end
