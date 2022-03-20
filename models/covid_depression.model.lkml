connection: "usaccount"

# include all the views
include: "/views/**/*.view"

datagroup: covid_depression_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: covid_depression_default_datagroup

explore: covid_depression {}
