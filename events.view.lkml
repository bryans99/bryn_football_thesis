view: events {
  sql_table_name: football.events ;;

  dimension: _id {
    primary_key: yes
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: card_type {
    type: string
    sql: ${TABLE}.card_type ;;
  }

  dimension: elapsed {
    type: number
    sql: ${TABLE}.elapsed ;;
  }

  dimension: elapsed_plus {
    type: number
    sql: ${TABLE}.elapsed_plus ;;
  }

  dimension: goal_subtype {
    type: string
    sql: ${TABLE}.goal_subtype ;;
  }

  dimension: goal_type_code {
    type: string
    sql: ${TABLE}.goal_type_code ;;
  }

  dimension: goal_type_desc {
    type: string
    sql: ${TABLE}.goal_type_desc ;;
  }

  dimension: id_fixture {
    type: number
    sql: ${TABLE}.id_fixture ;;
  }

  dimension: id_team_season {
    type: number
    sql: ${TABLE}.id_team_season ;;
  }

  dimension: id_team_season_assister {
    type: number
    sql: ${TABLE}.id_team_season_assister ;;
  }

  dimension: id_team_season_player {
    type: number
    sql: ${TABLE}.id_team_season_player ;;
  }

  dimension: id_team_season_player_in {
    type: number
    sql: ${TABLE}.id_team_season_player_in ;;
  }

  dimension: id_team_season_player_out {
    type: number
    sql: ${TABLE}.id_team_season_player_out ;;
  }

  dimension: id_team_season_scorer {
    type: number
    sql: ${TABLE}.id_team_season_scorer ;;
  }

  dimension: team_name {
    type: string
    sql: ${TABLE}.team_name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [team_name]
  }
}
