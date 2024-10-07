# tags terraform module

## description

Module to generate a tag map to other modules such as an instance.

## vars


- Required:
  - **app_code** => (required)
  - **app_owner** => (required)
  - **date_creation** => (required) Last resource modification date
  - **app_criticity** => (required) Criticité 
  values from C1 to C5
  - **technical_contact** => (required) mail contact of the techincal referent
- Optional:
  - **auto_shutdown_schedule** => Set Stop and Start of resources using a timeframe (default: never)

## outputs

- **datamap** => map of tag values

## usage

```
module "tags" {
  source = "../tags/"

  app_code               = "CERT"
  app_owner              = "SI Infra"
  date_creation          = "25092024"
  app_criticity          = "C1"
  technical_contact      = "admin@azcloud-consulting.com"
  auto_shutdown_schedule = "19:00 -> 8:00, Saturday, Sunday"
}

module "linux_vm_test" {
  source  = "../instance-linux/"
...
  tags  = module.tags.datamap
}
```


where **tags** variable is declared as a map


```
# tags
variable tags {
  type = "map"
}
```

