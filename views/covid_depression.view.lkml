view: covid_depression {
  sql_table_name: `Inhouse_BI.Covid_Depression`
    ;;

  dimension: confidence_interval {
    type: string
    sql: ${TABLE}.Confidence_Interval ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}.`Group` ;;
  }

  dimension: high_ci {
    type: number
    sql: ${TABLE}.High_CI ;;
  }

  measure: average_high_ci {
    type: average
    sql: ${high_ci} ;;
  }

  dimension: indicator {
    type: string
    sql: ${TABLE}.Indicator ;;
  }

  dimension: low_ci {
    type: number
    sql: ${TABLE}.Low_CI ;;
  }

  measure: average_low_ci {
    type: average
    sql: ${low_ci} ;;
  }


  dimension: phase {
    type: string
    sql: ${TABLE}.Phase ;;
  }

  dimension: quartile_range {
    type: string
    sql: ${TABLE}.Quartile_Range ;;
  }

  dimension: state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.State ;;
  }

  dimension: subgroup {
    type: string
    sql: ${TABLE}.Subgroup ;;
  }

  dimension: time_period {
    type: number
    sql: ${TABLE}.Time_Period ;;
  }

  dimension_group: time_period_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Time_Period_End_Date ;;
  }

  dimension: time_period_label {
    type: string
    sql: ${TABLE}.Time_Period_Label ;;
  }

  dimension_group: time_period_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Time_Period_Start_Date ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.Value ;;
  }

  measure: average_value {
    type: average
    sql: ${value} ;;
    value_format: "0.##"
  }

  measure: total_value {
    type: sum
    sql: ${value} ;;
    value_format: "0.##"
  }


  measure: percentage_of_value {
    type: percent_of_total
    sql: ${total_value}/100 ;;
    # value_format_name: percent_2
    value_format: "0.00\%"

  }


  measure: count {
    type: count
    drill_fields: []
  }
}
