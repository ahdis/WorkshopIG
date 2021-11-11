// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Id: my-patient
Title: "My Patient"
Description: "Profile of the Patient resource"
* name 1..* MS
* generalPractitioner only Reference(FishDoctor)
* extension contains FishSpecies named species 0..1


// https://www.hl7.org/fhir/extensibility.html
Extension: FishSpecies
Id: fish-species
Title: "Fish Species"
Description: "Extension to specify the species of the fish"
* value[x] only CodeableConcept
* valueCodeableConcept from FishSpecies (extensible)


Instance: PatientExample
InstanceOf: MyPatient
Usage: #example
Title: "James Pond"
Description: "Example of a patient with a license to krill"
* name
  * given[0] = "James"
  * family = "Pond"
* generalPractitioner = Reference(DoctorShark)
* extension[species].valueCodeableConcept = $SCT#740008 "Ophichthus ophis"