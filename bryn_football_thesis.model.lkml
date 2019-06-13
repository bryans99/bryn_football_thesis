connection: "lookerdata_publicdata_standard_sql"

# include all the views
include: "*.view"

datagroup: bryn_football_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bryn_football_thesis_default_datagroup

explore: countries {}

explore: events {}

explore: fixtures {}

explore: leagues {
  # Only interested in English Teams
  always_filter: {
    filters: {
      field: id_country
      value: "46"
    }
  }
}

explore: lineups {}

explore: players {
}

explore: seasons {
  # Only interested in Premier League
  always_filter: {
    filters: {
      field: id_league
      value: "08"
    }
  }
}

explore: standings {
  # Standings data is limited to last 9 years
  join: seasons {
    type: left_outer
    relationship: many_to_one
    sql_on: ${seasons._id} = ${standings.season} ;;
  }
}

explore: team_season_players {
  sql_always_where: ${player_name} > '' and ${teams_by_season.season_name} like 'Premier League%';;
  join: teams_by_season {
    type: left_outer
    relationship: many_to_many
    sql_on: ${team_season_players.id_team_season} = ${teams_by_season._id} ;;
  }
}

explore: teams {
  # Only interested in English Teams
  always_filter: {
    filters: {
      field: id_country
      value: "46"
    }
  }
}

explore: teams_by_season {
  sql_always_where: ${season_name} like 'Premier League%' ;;
}

explore: transfers {}
