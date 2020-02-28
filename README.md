# API Blog with Devise auth token which using JWT
* first to run this project must run bundle install then there api that task want
    You can see the collection post man and import it your postman
    * ### sing up 
    http://localhost:3000/auth this api must be post and body contains 
    
    * ### sing in 
        http://localhost:3000/auth/sing_in this api must be post and body contains 
        
    ## the upcoming api using authentication and but header which contains 3 authenticate 
        ** access-token  client uid
        
    * ### All post 
        http://localhost:3000/posts this api must be get
        
    * ### show post 
            http://localhost:3000/posts/ID this api must be post
      
    * ### create post 
         http://localhost:3000/posts this api must be post and send body
        
    * ### update post 
             http://localhost:3000/posts this api must be put and send body
    
    * ### delete post 
                 http://localhost:3000/posts/Id this api must be put and send body
                 
    ##### comments
    
    * ### create post 
         http://localhost:3000/posts/post_id/comments this api must be post and send body
        
    * ### update post 
         http://localhost:3000/posts/post_id/comments/"id this api must be put and send body
    
    * ### delete post 
                 http://localhost:3000/posts/post_id/comments/:id this api must be put and send body
    
    ##### tags
    * ### update post 
             http://localhost:3000/posts/post_id/tags/:id this api must be put and send body
             
    
    
    TO run the test run: rspec --format documentation
    
       
    To start Sidekiq when the server boots up, we need to create a symlink. In order to do so, run the below command.
    
    bundle exec sidekiq sudo systemctl enable sidekiq.service
    To start the Sidekiq service.
    
    sudo service sidekiq start systemctl {start,stop,restart} sidekiq
    You can check the system log for errors.
    
    sudo cat /var/log/syslog
    Check if Sidekiq started by
    
    sudo ps aux | grep sidekiq
    If the Sidekiq is running you can see something like…
    
    user 2609 0.7 3.3 1352776 136960 ? Ssl 06:18 0:15 sidekiq 5.2.7 application-name[0 of 25 busy]
    To reload daemon
    
    sudo systemctl daemon-reload