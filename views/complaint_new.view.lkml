# The name of this view in Looker is "Complaint New"
view: complaint_new {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `RA_KPIS.complaint_new` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Closed For" in Explore.

  dimension: closed_for {
    type: string
    sql: ${TABLE}.closed_for ;;
  }

  dimension: complaint_id {
    type: number
    sql: ${TABLE}.complaint_ID ;;
  }

  dimension: complaint_reference_no {
    type: string
    sql: ${TABLE}.complaint_reference_NO ;;
  }

  dimension: complaint_status {
    type: string
    sql: ${TABLE}.complaint_status ;;
  }

  dimension: current_stage {
    type: string
    sql: ${TABLE}.current_stage ;;
  }

  dimension: main_type_of_complaint {
    type: string
    sql: ${TABLE}.main_type_of_complaint ;;
  }

  dimension: number_of_referrals {
    type: number
    sql: ${TABLE}.number_of_referrals ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: order_close {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_close_date ;;
  }

  dimension_group: regestration_date_complaint {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.regestration_date_complaint ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: service_provider {
    type: string
    sql: ${TABLE}.service_provider ;;
  }

  dimension: settlement_amount {
    type: string
    sql: ${TABLE}.settlement_amount ;;
  }

  dimension: settlement_details {
    type: string
    sql: ${TABLE}.settlement_details ;;
  }

  dimension: subtype_of_complaint {
    type: string
    sql: ${TABLE}.subtype_of_complaint ;;
  }

  dimension: working_days {
    type: number
    sql: ${TABLE}.working_days ;;
  }
  measure: count {
    type: count
  }
}
