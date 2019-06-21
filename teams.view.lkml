view: teams {
  sql_table_name: football.teams ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: id_country {
    type: number
    sql: ${TABLE}.id_country ;;
  }

  dimension: name {
    type: string
    #sql: ${TABLE}.name ;;
    sql:
      CASE
        WHEN ${TABLE}.name = "Tottenham" THEN "Tottenham Hotspur"
        WHEN ${TABLE}.name = "Birmingham" THEN "Birmingham City"
        WHEN ${TABLE}.name = "Blackburn" THEN "Blackburn Rovers"
        WHEN ${TABLE}.name = "Bolton" THEN "Bolton Wanderers"
        WHEN ${TABLE}.name = "Brighton" THEN "Brighton & Hove Albion"
        WHEN ${TABLE}.name = "Cardiff" THEN "Cardiff City"
        WHEN ${TABLE}.name = "Huddersfield" THEN "Huddersfield Town"
        WHEN ${TABLE}.name = "Hull" THEN "Hull City"
        WHEN ${TABLE}.name = "Leicester" THEN "Leicester City"
        WHEN ${TABLE}.name = "Norwich" THEN "Norwich City"
        WHEN ${TABLE}.name = "Stoke" THEN "Stoke City"
        WHEN ${TABLE}.name = "Swansea" THEN "Swansea City"
        WHEN ${TABLE}.name = "West Ham" THEN "West Ham United"
        WHEN ${TABLE}.name = "Wigan" THEN "Wigan Athletic"
      ELSE ${TABLE}.name
      END ;;
  }

  dimension: region {
    case: {
      when: {
        sql: ${_id} in (5, 27, 8, 13, 33, 39, 10, 20) ;;
        label: "London"
      }
      when: {
        sql: ${_id} in (21, 41, 22, 25, 18, 37, 4, 1, 40) ;;
        label: "Midlands"
      }
      when: {
        sql: ${_id} in (31, 44, 32, 23, 15, 6, 30, 28, 9, 11, 17, 24, 14, 43, 36, 29, 34, 16) ;;
        label: "North"
      }
      when: {
        sql: ${_id} in (3, 19, 37, 38, 35, 42, 2, 7, 26) ;;
        label: "South"
      }
      when: {
        sql: ${_id} in (45, 12) ;;
        label: "Wales"
      }
      else: "Unknown"
    }
    alpha_sort: yes
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
