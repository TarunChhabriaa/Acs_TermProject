

Here we have created 3 buckets for 3 environments

dev-group17-project        <This is the dev environment which we created >
staging-group17-project   <This is the staging environment which we also created>
prod-group17-project      <This is the  Production environment which we created>


We then uploaded below photos in all of the 3 buckets from image folder

Ish.jpeg
Tarun.jpeg
Ashmit.jpeg
Ipsa.jpeg
Aparna.jpeg



For each of the env we created 3 different ssh keying the web server 

        ssh-keygen -t rsa -f Group17-dev
        ssh-keygen -t rsa -f Group17-staging
        ssh-keygen -t rsa -f Group17-prod


### DEPLOYMENT 


As soon as the bucket is formed, we will then provide and deploy for tall the three environments.  After setting up the development environment, we moved on to the network section and ran the terraform command there before moving on to the web server section and using the same command 

 tpgrp17/environment/dev/network/

Terraform init 
Terraform fmt
Terraform validate
Terraform plan
Terraform apply 


tpgrp17/environment/dev/webserver/

Terraform init 
Terraform fmt
Terraform validate
Terraform plan
Terraform apply 

After that, The same code will be applied to the staging environment for network and webserver changes if deployment in development is successful.

tpgrp17/environment/staging/network/

Terraform init 
Terraform fmt
Terraform validate
Terraform plan
Terraform apply 


tpgrp17/environment/staging/webserver/

Terraform init 
Terraform fmt
Terraform validate
Terraform plan
Terraform apply 

So in the end all the above changes will also be applied to production environment and apply same command 

tpgrp17/environment/prod/network/

Terraform init 
Terraform fmt
Terraform validate
Terraform plan
Terraform apply 

tpgrp17/environment/prod/webserver/

Terraform init 
Terraform fmt
Terraform validate
Terraform plan
Terraform apply 


######## TERRAFORM DESTROY 
After the deployment is successfully done we can now destroy the terraform 


        tpgrp17/environment/prod/webserver/
        terraform destroy --auto-approve 


        tpgrp17/environment/prod/network/
        terraform destroy --auto-approve 




        tpgrp17/environment/staging/webserver/
        terraform destroy --auto-approve 


        tpgrp17/environment/staging/network/
        terraform destroy --auto-approve 




        tpgrp17/environment/dev/webserver/
        terraform destroy --auto-approve 


        tpgrp17/environment/dev/network/
        terraform destroy --auto-approve 






  Here is the link for our git repository https://github.com/TarunChhabriaa/Acs_TermProject
