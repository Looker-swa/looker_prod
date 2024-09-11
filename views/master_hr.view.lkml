# The name of this view in Looker is "Master Hr"
view: master_hr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `core_looker_test.master_hr` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: emp_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.Emp_id ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.Nationality ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
