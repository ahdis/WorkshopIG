Profile: FishDoctor
Parent: ChCorePractitioner
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
Description: "Example of a Fish Doctor (Practitioner)"
* name
  * given[+] = "Peter"
  * given[+] = "Fishbone"
  * family = "Shark"