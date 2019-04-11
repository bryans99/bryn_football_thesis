view: team_season_players {
  sql_table_name: football.team_season_players ;;

  dimension: _id {
    primary_key: yes
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: id_player {
    type: number
    sql: ${TABLE}.id_player ;;
  }

  dimension: id_team_season {
    type: number
    sql: ${TABLE}.id_team_season ;;
  }

  dimension: player_name {
    type: string
    sql: ${TABLE}.player_name ;;
  }

  measure: count {
    type: count
    drill_fields: [player_name]
  }
}
