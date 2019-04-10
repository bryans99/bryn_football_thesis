view: leagues {
  sql_table_name: football.leagues ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: id_country {
    type: number
    sql: ${TABLE}.id_country ;;
  }

  dimension: logo_svg {
    type: string
    sql: ${TABLE}.logo_svg ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
