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
    row: 0
    col: 0
    width: 8
    height: 6
