Profile: FishDoctor
Parent: CHCorePractitioner // Computable Name - https://fhir.ch/ig/ch-core/StructureDefinition-ch-core-practitioner.html
Id: fish-doctor
Title: "Fish Doctor"
Description: "Profile of the Practitioner resource"
* . ^short = "Fish doctor"
* name 1..
  * given 1..
  * family 1..


Instance: DoctorShark
InstanceOf: FishDoctor
Usage: #example
Title: "Doctor Shark"
Description: "Example of a practitioner specialising as a fish doctor"
* name
  * given[0] = "Peter"
  * given[+] = "Fishbone"
  * family = "Shark"
