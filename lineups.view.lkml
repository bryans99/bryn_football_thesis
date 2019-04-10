view: lineups {
  sql_table_name: football.lineups ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: id_fixture {
    type: number
    sql: ${TABLE}.id_fixture ;;
  }

  dimension: id_team_season {
    type: number
    sql: ${TABLE}.id_team_season ;;
  }

  dimension: id_team_season_player {
    type: number
    sql: ${TABLE}.id_team_season_player ;;
  }

  dimension: is_starting_xi {
    type: yesno
    sql: ${TABLE}.is_startingXI ;;
  }

  dimension: player_name {
    type: string
    sql: ${TABLE}.player_name ;;
  }

  dimension: shirt_number {
    type: number
    sql: ${TABLE}.shirtNumber ;;
  }

  dimension: team_name {
    type: string
    sql: ${TABLE}.team_name ;;
  }

  measure: count {
    type: count
    drill_fields: [player_name, team_name]
  }
}
