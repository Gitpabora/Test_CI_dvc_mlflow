# Test CI for  dvc_mlflow_dagshub
Test_CI_dvc_mlflow

Step 1 Create Github repository  
 
       Create  Dagshub repository  https://dagshub.com
       
Step 2 Install dvc   // included in  requirementss.txt for make
       configure dvc :
       dvc init   // project repository folder
       dvc remote add origin https://dagshub.com/borahparinita123/Test_CI_dvc_mlflow.dvc
       dvc remote modify origin --local auth basic
       dvc remote modify origin --local user Gitpabora
       dvc remote modify origin --local password  $MYT ##
       
        dvc pull -r origin
        dvc add data/raw
       
       
        cgit add  data/.gitignore data/raw.dvc
        dvc config core.autostage true
         
       
        dvc push  -r origin
       
        #git add .dvc .dvcignore .gitignore 
        
Step 3:
       install mlflow
       # add the following in the python code!
        mlflow.set_tracking_uri("https://dagshub.com/borahparinita123/Test_CI_dvc_mlflow.mlflow")
        tracking_uri = mlflow.get_tracking_uri()
        print("Current tracking uri: {}".format(tracking_uri))
        
        execute 
        export MLFLOW_TRACKING_USERNAME=BORAHPARINITA123
        export MLFLOW_TRACKING_PASSWORD=$MYT
## Dagshub       
https://dagshub.com/borahparinita123/Test_CI_dvc_mlflow
## mlflow tracking        
 ##https://dagshub.com/borahparinita123/Test_CI_dvc_mlflow.mlflow/#/experiments/0/s?searchInput=&orderByKey=attributes.start_time&orderByAsc=false&startTime=ALL&lifecycleFilter=Active&modelVersionFilter=All%20Runs&showMultiColumns=true&categorizedUncheckedKeys%5Battributes%5D%5B0%5D=&categorizedUncheckedKeys%5Bparams%5D%5B0%5D=&categorizedUncheckedKeys%5Bmetrics%5D%5B0%5D=&categorizedUncheckedKeys%5Btags%5D%5B0%5D=&diffSwitchSelected=false&preSwitchCategorizedUncheckedKeys%5Battributes%5D%5B0%5D=&preSwitchCategorizedUncheckedKeys%5Bparams%5D%5B0%5D=&preSwitchCategorizedUncheckedKeys%5Bmetrics%5D%5B0%5D=&preSwitchCategorizedUncheckedKeys%5Btags%5D%5B0%5D=&postSwitchCategorizedUncheckedKeys%5Battributes%5D%5B0%5D=&postSwitchCategorizedUncheckedKeys%5Bparams%5D%5B0%5D=&postSwitchCategorizedUncheckedKeys%5Bmetrics%5D%5B0%5D=&postSwitchCategorizedUncheckedKeys%5Btags%5D%5B0%5D=       

# Install Docker/Jenkins
# Docker
     https://docs.docker.com/desktop/linux/install/ubuntu/

# Jenkins     
     $ docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
     
     $ docker ps
     $ docker logs d899d573f167 (CONTAINER ID obtained from docker ps)
      ubuntu : /var/snap/docker/common/var-lib-docker
      
     Open http://localhost:8080 & enter the password
     Install default packages
     Create First Admin User
     Jenkins URL: http://localhost:8080/

       
