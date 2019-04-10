view: standings {
  sql_table_name: football.standings ;;

  dimension: against {
    type: number
    sql: ${TABLE}.Against ;;
  }

  dimension: difference {
    type: number
    sql: ${TABLE}.Difference ;;
  }

  dimension: draw {
    type: number
    sql: ${TABLE}.Draw ;;
  }

  dimension: goals {
    type: number
    sql: ${TABLE}.Goals ;;
  }

  dimension: loss {
    type: number
    sql: ${TABLE}.Loss ;;
  }

  dimension: played {
    type: number
    sql: ${TABLE}.Played ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.Points ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.Position ;;
  }

  dimension: season {
    type: number
    sql: ${TABLE}.Season ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: win {
    type: number
    sql: ${TABLE}.Win ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
