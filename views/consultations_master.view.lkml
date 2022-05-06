# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

view: consultations_master {
  sql_table_name: `bajaj-finserv-health-searcepoc.bajaj_poc_dataset.consultations_master`
    ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension_group: actual_appointment_end {
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
    sql: ${TABLE}.actualAppointmentEndTime ;;
  }

  dimension_group: actual_appointment_start {
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
    sql: ${TABLE}.actualAppointmentStartTime ;;
  }

  dimension: advices {
    hidden: yes
    sql: ${TABLE}.advices ;;
  }

  dimension: appointment_id_encrypted {
    type: string
    sql: ${TABLE}.appointmentId_encrypted ;;
  }

  dimension: appointment_source {
    type: string
    sql: ${TABLE}.appointmentSource ;;
  }

  dimension: appt_category {
    type: string
    sql: ${TABLE}.apptCategory ;;
  }

  dimension: chief_complaints {
    hidden: yes
    sql: ${TABLE}.chiefComplaints ;;
  }

  dimension: consultation_id_encrypted {
    type: string
    sql: ${TABLE}.consultationId_encrypted ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.createdAt ;;
  }

  dimension: disease {
    hidden: yes
    sql: ${TABLE}.disease ;;
  }

  dimension: doctor_id_encrypted {
    type: string
    sql: ${TABLE}.doctorId_encrypted ;;
  }

  dimension: investigations {
    hidden: yes
    sql: ${TABLE}.investigations ;;
  }

  dimension: is_prescription_valid {
    type: yesno
    sql: ${TABLE}.isPrescriptionValid ;;
  }

  dimension: medicines {
    hidden: yes
    sql: ${TABLE}.medicines ;;
  }

  dimension: patient_id_encrypted {
    type: string
    sql: ${TABLE}.patientId_encrypted ;;
  }

  dimension: patient_mobile_encrypted {
    type: string
    sql: ${TABLE}.patientMobile_encrypted ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}.paymentStatus ;;
  }

  dimension: prescription_generated {
    type: string
    sql: ${TABLE}.prescriptionGenerated ;;
  }

  dimension_group: scheduled_appointment_date {
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
    sql: ${TABLE}.scheduledAppointmentDateTime ;;
  }

  dimension: section_code {
    type: string
    sql: ${TABLE}.sectionCode ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updatedAt ;;
  }

  dimension: vitals__bmi {
    type: string
    sql: ${TABLE}.vitals.bmi ;;
    group_label: "Vitals"
    group_item_label: "Bmi"
  }

  dimension: vitals__diastolic_bp {
    type: string
    sql: ${TABLE}.vitals.diastolicBp ;;
    group_label: "Vitals"
    group_item_label: "Diastolic Bp"
  }

  dimension: vitals__height_in_cm {
    type: string
    sql: ${TABLE}.vitals.heightInCm ;;
    group_label: "Vitals"
    group_item_label: "Height In Cm"
  }

  dimension: vitals__is_prescription_generated {
    type: string
    sql: ${TABLE}.vitals.IsPrescriptionGenerated ;;
    group_label: "Vitals"
    group_item_label: "Is Prescription Generated"
  }

  dimension: vitals__patient_id {
    type: string
    sql: ${TABLE}.vitals.patientId ;;
    group_label: "Vitals"
    group_item_label: "Patient ID"
  }

  dimension: vitals__prescription_blob_url {
    type: string
    sql: ${TABLE}.vitals.PrescriptionBlobURL ;;
    group_label: "Vitals"
    group_item_label: "Prescription Blob URL"
  }

  dimension: vitals__pulse {
    type: string
    sql: ${TABLE}.vitals.pulse ;;
    group_label: "Vitals"
    group_item_label: "Pulse"
  }

  dimension: vitals__respiratory_rate {
    type: string
    sql: ${TABLE}.vitals.respiratoryRate ;;
    group_label: "Vitals"
    group_item_label: "Respiratory Rate"
  }

  dimension: vitals__spo2 {
    type: string
    sql: ${TABLE}.vitals.spo2 ;;
    group_label: "Vitals"
    group_item_label: "Spo2"
  }

  dimension: vitals__systolic_bp {
    type: string
    sql: ${TABLE}.vitals.systolicBp ;;
    group_label: "Vitals"
    group_item_label: "Systolic Bp"
  }

  dimension: vitals__temperature {
    type: string
    sql: ${TABLE}.vitals.temperature ;;
    group_label: "Vitals"
    group_item_label: "Temperature"
  }

  dimension: vitals__weight {
    type: string
    sql: ${TABLE}.vitals.weight ;;
    group_label: "Vitals"
    group_item_label: "Weight"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
