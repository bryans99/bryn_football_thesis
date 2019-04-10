view: transfers {
  sql_table_name: football.transfers ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: fee {
    type: number
    sql: ${TABLE}.Fee ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: player {
    type: string
    sql: ${TABLE}.Player ;;
  }

  dimension: team {
    type: number
    sql: ${TABLE}.Team ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
