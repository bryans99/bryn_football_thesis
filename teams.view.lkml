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
    sql: ${TABLE}.name ;;
  }

  dimension: region {
    case: {
      when: {
        sql: ${_id} = 5 ;;
        label: "London"
      }
      when: {
        sql: ${_id} = 21 or ${_id} = 41 ;;
        label: "Midlands"
      }
      else: "unknown"
    }
    alpha_sort: yes
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
