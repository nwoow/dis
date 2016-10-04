####### RAILS COMMANDS #################

 rails generate scaffold_controller GenericType generic_type_name:string 	 data_source_data_source_id:integer  status:boolean

#Generate scaffold
 rails generate scaffold DoseForm doseform_name:string 	 doseform_abbr:string data_source_id:integer  status:boolean

 rails generate scaffold States state_name:string state_HASC_code:string country_alpha2_code:string
 rails generate scaffold Cities distric_name:string district_code:string state_HASC_code:string country_alpha2_code:string




#If you want to rollback migration then use :
rake db:migrate:down VERSION=20160328091148
#If you want to rollup specific version use this :
rake db:migrate:up VERSION=20160328091148

#Drop the database completely and recreate from migrate scripts.
#All data will be lost. Fresh set of tables will be created.
rake db:drop
rake db:create db:migrate

#Add a migration
rails generate migration drop NfiIndications
#edit created migration file and add required commands and then execute migration
rake db:migrate

####### GIT COMMANDS ##############
#Pull a project in the beginning
git pull "<URL of the project>"
#Update your local branch before pushing
git pull
# Check the local file changes
git status
# Add changed files to the index for committing
git add -A
#Store the added files to the commit queue with a message of the changes ready for push
git commit -m "<message or comment>"
#Push the committed file to the repository
git push
# Change to branch "7apr2016'
git fetch && git checkout 7apr2016
# Change back to master
git fetch && git checkout master
