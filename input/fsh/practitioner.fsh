Profile: FishDoctor
Parent: ChCorePractitioner
Id: fish-doctor
Title: "Fish Doctor"
Description: "Profile for a fish doctor"
* . ^short = "Fish doctor"
* name 1..
* name.family 1..
* name.given 1..


Instance: DoctorShark
InstanceOf: FishDoctor
Usage: #example
Title: "Doctor Shark"
Description: "The best doctor"
* name.family = "Shark"
* name.given = "Peter"
