### Notes 
- Check out instructions on [dbt Core Installation Guide](https://docs.getdbt.com/docs/core/installation-overview) before running locally
- Custom schemas were implemented using `generate_schema_name.sql` macro. Config was specified in `dbt_project.yml`
  - Raw data is stored in `raw` schema, defined as source in `raw.yml`
  - Dimension models are located in `dimensions` schema
  - Fact models are located in `facts` schema
- In addition to the standard generic dbt tests, `dbt_expectations` package was used for testing. Make sure you run `dbt deps` before running locally
- run `dbt build` to materialize models
