view: seasons {
  sql_table_name: football.seasons ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: id_country {
    type: number
    sql: ${TABLE}.id_country ;;
  }

  dimension: id_league {
    type: number
    sql: ${TABLE}.id_league ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: years {
    type: string
    sql: ${TABLE}.years ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
