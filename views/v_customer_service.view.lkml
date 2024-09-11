# The name of this view in Looker is "Customer Service"
view:v_customer_service {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `core_looker_test.cstmr` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Avarage Handeling Time" in Explore.

  dimension: avarage_handeling_time {
    type: number
    sql: ${TABLE}.`Avarage Handeling Time` ;;
  }

  dimension: avarage_speed_answer {
    type: number
    sql: ${TABLE}.`Avarage Speed Answer` ;;
  }

  dimension: call_id {
    type: string
    sql: ${TABLE}.Call_id ;;
  }

  dimension: customer_satisfaction_index {
    type: number
    sql: ${TABLE}.`Customer Satisfaction Index` ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: emp_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.Emp_id ;;
  }

  dimension: first_call_resulation {
    type: yesno
    sql: ${TABLE}.`First Call Resulation` ;;
  }
  measure: count {
    type: count
  }
}
