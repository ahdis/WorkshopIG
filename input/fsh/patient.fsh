Profile: FishPatient
Parent: Patient
Id: fish-patient
Title: "Fish Patient"
Description: "Profile for a fish patient"
* generalPractitioner only Reference(FishDoctor)
* generalPractitioner MS
* extension contains FishSpecies named species 0..1


// https://www.hl7.org/fhir/extensibility.html
Extension: FishSpecies
Id: fish-species
Title: "Fish Species"
Description: "The species of the fish"
* value[x] only CodeableConcept
* valueCodeableConcept from VSFishSpecies (extensible)


Instance: Dory
InstanceOf: FishPatient
Usage: #example
Title: "Dory"
Description: "Poor Dory"
* generalPractitioner = Reference(DoctorShark)
* extension[species].valueCodeableConcept = SCT#740008 "Ophichthus ophis"