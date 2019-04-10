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

explore: leagues {}

explore: lineups {}

explore: players {}

explore: seasons {}

explore: standings {}

explore: team_season_players {}

explore: teams {
  # Only interested in English Teams
  always_filter: {
    filters: {
      field: id_country
      value: "46"
    }
  }
}

explore: teams_by_season {}

explore: transfers {}
