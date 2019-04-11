view: countries {
  sql_table_name: football.countries ;;

  dimension: _id {
    primary_key: yes
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rectangle_flag {
    type: string
    sql: ${TABLE}.rectangle_flag ;;
  }

  dimension: square_flag {
    type: string
    sql: ${TABLE}.square_flag ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
