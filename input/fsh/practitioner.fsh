Profile: MyPractitioner
Parent: ChCorePractitioner
Id: my-practitioner
Title: "My Practitioner"
Description: "This profile constrains the Practitioner resource to represent ..."
* . ^short = "My Practitioner"
* communication from MyVSCommunicationLanguages (extensible)
* qualification.code from MyVSQualification (required)


Instance: DoctorHelper
InstanceOf: MyPractitioner
Usage: #example
Title: "Doctor Helper"
Description: "Example of a Practitioner"
* name.family = "Doctor"
* name.given = "Helper"
* gender = #male
//* qualification.code = Qualification#MD "Doctor of Medicine"
* qualification.code = MyCSQualification#2 "Doctor with Qualification 2"
* communication[+] = Languages#de-CH "German (Switzerland)"
* communication[+] = Languages#fr-CH "French (Switzerland)"


Mapping: MappingMyPractitioner
Source: MyPractitioner
Target: "http://myorganization.com/practitioner"
* qualification.code    -> "Internal qualification code from My Organization"
* communication         -> "Language of correspondance in My Organization"

