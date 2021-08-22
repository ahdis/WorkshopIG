Profile: MyPatient
Parent: Patient
Id: my-patient
Title: "My Patient"
Description: "This profile constrains the Patient resource to represent ..."
// Set cardinalities
* name 1..
* name.family 1..
* generalPractitioner ..1
// Create a standalone extension
* extension contains PlaceOfOrigin named place-of-origin 0..*
// Specify references
* generalPractitioner only Reference(MyPractitioner or ChCorePractitionerRole)
// Slicing identifier
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    EPR-SPID 0..1 and
    AHVN13 0..1 and
    LocalPid 0..*
* identifier[EPR-SPID] ^patternIdentifier.system = "urn:oid:2.16.756.5.30.1.127.3.10.3"
* identifier[EPR-SPID].value 1..
* identifier[AHVN13] ^patternIdentifier.system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value 1..
* identifier[LocalPid] ^patternIdentifier.type = $v2-0203#MR
* identifier[LocalPid].system 1..
* identifier[LocalPid].value 1..


Extension: PlaceOfOrigin
Id: place-of-origin
Title: "Place Of Origin"
Description: "Place of origin(s) of the patient"
* value[x] only Address
* value[x] 1..


Instance: JaneDoe
InstanceOf: MyPatient
Usage: #example
Title: "Jane Doe"
Description: "Example of a Patient"
* name.family = "Doe"
* name.given = "Jane"
* extension[place-of-origin].valueAddress.city = "Leidensdorf"
* extension[place-of-origin].valueAddress.postalCode = "3333"
* generalPractitioner = Reference(DoctorHelper)
// EPR-SPID
* identifier[EPR-SPID].system = "urn:oid:2.16.756.5.30.1.127.3.10.3"
* identifier[EPR-SPID].value = "7560521127080"
// AHVN13
* identifier[AHVN13].system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value = "756.0521.1270.80"
// LocalPid
* identifier[LocalPid].type = $v2-0203#MR
* identifier[LocalPid].system = "urn:oid:2.16.756.5.30.999999.1"
* identifier[LocalPid].value = "012/08.111111"