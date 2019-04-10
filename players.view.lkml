view: players {
  sql_table_name: football.players ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: positions {
    type: string
    sql: ${TABLE}.positions ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
