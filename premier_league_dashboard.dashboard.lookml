- dashboard: premier_league_dashboard
  title: Premier League Dashboard
  layout: newspaper
  elements:
  - title: Premier League Team Wins
    name: Premier League Team Wins
    model: bryn_football_thesis
    explore: standings
    type: looker_column
    fields: [standings.team, standings.count]
    filters:
      standings.position: '1'
    sorts: [standings.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Teams by number of appearances in Premier League
    name: Teams by number of appearances in Premier League
    model: bryn_football_thesis
    explore: teams_by_season
    type: looker_column
    fields: [teams_by_season.team_name, teams_by_season.count]
    sorts: [teams_by_season.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Long Playing Players
    name: Long Playing Players
    model: bryn_football_thesis
    explore: team_season_players
    type: looker_bar
    fields: [team_season_players.player_name, team_season_players.count]
    filters:
      team_season_players.count: ">16"
    sorts: [team_season_players.count desc]
    limit: 500
    column_limit: 50
    series_types: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Players who move around a lot
    name: Players who move around a lot
    model: bryn_football_thesis
    explore: team_season_players
    type: looker_column
    fields: [team_season_players.player_name, teams_by_season.count_teams]
    sorts: [teams_by_season.count_teams desc]
    limit: 10
    column_limit: 50
    row: 6
    col: 0
    width: 8
    height: 6
