view: teams_by_season {
  sql_table_name: football.teams_by_season ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: id_season {
    type: number
    sql: ${TABLE}.id_season ;;
  }

  dimension: id_team {
    type: number
    sql: ${TABLE}.id_team ;;
  }

  dimension: season_name {
    type: string
    sql: ${TABLE}.season_name ;;
  }

  dimension: team_name {
    type: string
    sql: ${TABLE}.team_name ;;
  }

  measure: count {
    type: count
    drill_fields: [season_name, team_name]
  }
}
