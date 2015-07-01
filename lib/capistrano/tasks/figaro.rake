namespace :figaro do      
   desc "Transfer Figaro's application.yml to shared/config"
   task :upload do
     on roles(:all) do
       upload! "config/application.yml", "#{shared_path}/config/application.yml"
     end
   end
 end
 