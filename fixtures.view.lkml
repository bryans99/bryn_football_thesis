view: fixtures {
  sql_table_name: football.fixtures ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension_group: first_half_ended {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_half_ended_at ;;
  }

  dimension: fixture_status {
    type: string
    sql: ${TABLE}.fixture_status ;;
  }

  dimension: fixture_status_short {
    type: string
    sql: ${TABLE}.fixture_status_short ;;
  }

  dimension_group: game_ended {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.game_ended_at ;;
  }

  dimension_group: game_stated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.game_stated_at ;;
  }

  dimension: id_country {
    type: number
    sql: ${TABLE}.id_country ;;
  }

  dimension: id_league {
    type: number
    sql: ${TABLE}.id_league ;;
  }

  dimension: id_referee {
    type: number
    sql: ${TABLE}.id_referee ;;
  }

  dimension: id_season {
    type: number
    sql: ${TABLE}.id_season ;;
  }

  dimension: id_stage {
    type: number
    sql: ${TABLE}.id_stage ;;
  }

  dimension: id_team_season_away {
    type: number
    sql: ${TABLE}.id_team_season_away ;;
  }

  dimension: id_team_season_home {
    type: number
    sql: ${TABLE}.id_team_season_home ;;
  }

  dimension: lineup_confirmed {
    type: string
    sql: ${TABLE}.lineup_confirmed ;;
  }

  dimension: number_goal_team_away {
    type: number
    sql: ${TABLE}.number_goal_team_away ;;
  }

  dimension: number_goal_team_home {
    type: number
    sql: ${TABLE}.number_goal_team_home ;;
  }

  dimension: referee_name {
    type: string
    sql: ${TABLE}.referee_name ;;
  }

  dimension: round {
    type: string
    sql: ${TABLE}.round ;;
  }

  dimension_group: schedule {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.schedule_date ;;
  }

  dimension_group: second_half_ended {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.second_half_ended_at ;;
  }

  dimension_group: second_half_started {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.second_half_started_at ;;
  }

  dimension: spectators {
    type: number
    sql: ${TABLE}.spectators ;;
  }

  dimension: stadium {
    type: string
    sql: ${TABLE}.stadium ;;
  }

  dimension: team_season_away_name {
    type: string
    sql: ${TABLE}.team_season_away_name ;;
  }

  dimension: team_season_home_name {
    type: string
    sql: ${TABLE}.team_season_home_name ;;
  }

  measure: count {
    type: count
    drill_fields: [team_season_home_name, team_season_away_name, referee_name]
  }
}
