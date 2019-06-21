- dashboard: pl_region_dashboard
  title: PL Region Dashboard
  layout: newspaper
  elements:
  - title: Teams per Region
    name: Teams per Region
    model: bryn_football_thesis
    explore: teams
    type: looker_pie
    fields: [teams.region, teams.count]
    filters:
      teams.id_country: '46'
      teams.region: "-Unknown"
    sorts: [teams.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: labels
    label_type: labVal
    start_angle:
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: UEFA Champions League Qualification By Region and Team
    name: UEFA Champions League Qualification By Region and Team
    model: bryn_football_thesis
    explore: standings
    type: looker_column
    fields: [standings.team, teams.region, standings.count]
    filters:
      standings.team: "-NULL"
      standings.position: '1,2,3,4'
    sorts: [standings.count desc]
    limit: 500
    column_limit: 50
    series_types: {}
    row: 6
    col: 0
    width: 8
    height: 6
  - title: UEFA Europa League Qualification by Region and Team
    name: UEFA Europa League Qualification by Region and Team
    model: bryn_football_thesis
    explore: standings
    type: looker_column
    fields: [standings.team, teams.region, standings.count]
    filters:
      standings.team: "-NULL"
      standings.position: '1,2,3,4,5,6'
    sorts: [standings.count desc]
    limit: 500
    column_limit: 50
    series_types: {}
    row: 6
    col: 16
    width: 8
    height: 6
  - title: UEFA Champions League Qualification By Region
    name: UEFA Champions League Qualification By Region
    model: bryn_football_thesis
    explore: standings
    type: looker_pie
    fields: [teams.region, standings.count]
    fill_fields: [teams.region]
    filters:
      standings.team: "-NULL"
      standings.position: '1,2,3,4'
    sorts: [standings.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: per
    series_types: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - title: UEFA Europa League Qualification by Region
    name: UEFA Europa League Qualification by Region
    model: bryn_football_thesis
    explore: standings
    type: looker_pie
    fields: [teams.region, standings.count]
    fill_fields: [teams.region]
    filters:
      standings.team: "-NULL"
      standings.position: '1,2,3,4,5,6'
    sorts: [standings.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: per
    series_types: {}
    row: 0
    col: 8
    width: 8
    height: 6
