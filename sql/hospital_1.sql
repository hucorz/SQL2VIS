/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Which department has the largest number of employees?*/


SELECT Department.Name, COUNT(*) AS 'Number of Employees'
FROM Department
INNER JOIN Affiliated_With ON Department.DepartmentID = Affiliated_With.Department
GROUP BY Department.Name
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the department with the most employees.*/


SELECT Department.Name, COUNT(*) AS 'Number of Employees'
FROM Department
INNER JOIN Affiliated_With ON Department.DepartmentID = Affiliated_With.Department
GROUP BY Department.Name
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What is the employee id of the head whose department has the least number of employees?*/


SELECT EmployeeID 
FROM Physician 
INNER JOIN Department 
ON Physician.Position = 'Head' 
AND Department.Head = Physician.EmployeeID 
ORDER BY (SELECT COUNT(*) 
           FROM Affiliated_With 
           WHERE DepartmentID = Department.DepartmentID) ASC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Tell me the employee id of the head of the department with the least employees.*/


SELECT Department.Head, COUNT(Affiliated_With.Physician) AS Num_Employees
FROM Department
LEFT JOIN Affiliated_With ON Department.DepartmentID = Affiliated_With.Department
GROUP BY Department.Head
ORDER BY Num_Employees ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer what is the name and position of the head whose department has least number of employees?*/


SELECT d.Name, d.Head, COUNT(a.Physician) AS NumEmployees
FROM Department d
LEFT JOIN Affiliated_With a ON d.DepartmentID = a.Department
GROUP BY d.Name, d.Head
ORDER BY NumEmployees ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the name and position of the head of the department with the least employees.*/


SELECT Department.Name, Department.Head, COUNT(Affiliated_With.Physician) AS NumEmployees
FROM Department
LEFT JOIN Affiliated_With ON Department.DepartmentID = Affiliated_With.Department
GROUP BY Department.DepartmentID
ORDER BY NumEmployees ASC
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What are names of patients who made an appointment?*/


SELECT Patient.Name 
FROM Patient 
INNER JOIN Appointment 
ON Patient.SSN = Appointment.Patient

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to List the names of patients who have made appointments.*/


SELECT Name 
FROM Patient 
INNER JOIN Appointment 
ON Patient.SSN = Appointment.Patient

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer what are name and phone number of patients who had more than one appointment?*/


SELECT Patient.Name, Patient.Phone 
FROM Patient 
INNER JOIN Appointment ON Patient.SSN = Appointment.Patient 
GROUP BY Patient.Name, Patient.Phone 
HAVING COUNT(Appointment.AppointmentID) > 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Which patients made more than one appointment? Tell me the name and phone number of these patients.*/


SELECT p.Name, p.Phone
FROM Patient p
INNER JOIN Appointment a ON p.SSN = a.Patient
GROUP BY p.Name, p.Phone
HAVING COUNT(a.AppointmentID) > 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Find the id of the appointment with the most recent start date?*/


SELECT AppointmentID 
FROM Appointment 
ORDER BY Start DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What is the id of the appointment that started most recently?*/


SELECT AppointmentID
FROM Appointment
ORDER BY Start DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to List the name of physicians who took some appointment.*/


SELECT Name 
FROM Physician 
INNER JOIN Appointment 
ON Physician.EmployeeID = Appointment.Physician

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to What are the names of all the physicians who took appointments.*/


SELECT Name 
FROM Physician 
INNER JOIN Appointment 
ON Physician.EmployeeID = Appointment.Physician

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to List the name of physicians who never took any appointment.*/


SELECT Name 
FROM Physician 
WHERE EmployeeID NOT IN (SELECT Physician 
                        FROM Appointment)

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Which physicians have never taken any appointment? Find their names.*/


SELECT Name
FROM Physician
WHERE EmployeeID NOT IN (SELECT Physician FROM Appointment)

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the names of all physicians and their primary affiliated departments' names.*/


SELECT p.Name, d.Name 
FROM Physician p 
INNER JOIN Affiliated_With a ON p.EmployeeID = a.Physician 
INNER JOIN Department d ON a.Department = d.DepartmentID

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What are the name and primarily affiliated department name of each physician?*/


SELECT p.Name, d.Name
FROM Physician p
INNER JOIN Affiliated_With a ON p.EmployeeID = a.Physician
INNER JOIN Department d ON a.Department = d.DepartmentID

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What is the name of the patient who made the most recent appointment?*/


SELECT Patient.Name 
FROM Patient 
INNER JOIN Appointment 
ON Patient.SSN = Appointment.Patient 
ORDER BY Appointment.Start DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the name of the patient who made the appointment with the most recent start date.*/


SELECT Patient.Name 
FROM Patient 
INNER JOIN Appointment 
ON Patient.SSN = Appointment.Patient 
ORDER BY Appointment.Start DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer How many patients stay in room 112?*/


SELECT COUNT(*) 
FROM Stay 
WHERE Room = 112

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Count the number of patients who stayed in room 112.*/


SELECT COUNT(*) 
FROM Stay 
WHERE Room = 112

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer How many patients' prescriptions are made by physician John Dorian?*/


SELECT COUNT(*)
FROM Prescribes
WHERE Physician = 'John Dorian'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the number of patients' prescriptions physician John Dorian made.*/


SELECT COUNT(*) 
FROM Prescribes 
WHERE Physician = 'John Dorian'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Find the name of medication used on the patient who stays in room 111?*/


SELECT m.Name
FROM Medication m
INNER JOIN Prescribes p ON m.Code = p.Medication
INNER JOIN Stay s ON p.Patient = s.Patient
INNER JOIN Room r ON s.Room = r.RoomNumber
WHERE r.RoomNumber = 111

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What is the name of the medication used for the patient staying in room 111?*/


SELECT Medication.Name
FROM Medication
INNER JOIN Prescribes ON Medication.Code = Prescribes.Medication
INNER JOIN Patient ON Prescribes.Patient = Patient.SSN
INNER JOIN Stay ON Patient.SSN = Stay.Patient
INNER JOIN Room ON Stay.Room = Room.RoomNumber
WHERE Room.RoomNumber = '111'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the patient who most recently stayed in room 111.*/


SELECT Patient 
FROM Stay 
WHERE Room = 111 
ORDER BY StayEnd DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What is the id of the patient who stayed in room 111 most recently?*/


SELECT Patient 
FROM Stay 
WHERE Room = 111 
ORDER BY StayEnd DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What is the name of the nurse has the most appointments?*/


SELECT Nurse.Name
FROM Nurse
INNER JOIN Appointment ON Nurse.EmployeeID = Appointment.PrepNurse
GROUP BY Nurse.Name
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the name of the nurse who has the largest number of appointments.*/


SELECT Nurse.Name
FROM Nurse
INNER JOIN Appointment ON Nurse.EmployeeID = Appointment.PrepNurse
GROUP BY Nurse.Name
ORDER BY COUNT(*) DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to How many patients do each physician take care of? List their names and number of patients they take care of.*/


SELECT p.Name, COUNT(DISTINCT a.Patient) AS 'Number of Patients'
FROM Physician p
INNER JOIN Appointment a ON p.EmployeeID = a.Physician
GROUP BY p.Name

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Return the name of each physician and the number of patients he or she treats.*/


SELECT Name, COUNT(Patient) 
FROM Physician 
INNER JOIN Appointment ON Physician.EmployeeID = Appointment.Physician 
GROUP BY Name

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the name of physicians who are in charge of more than one patient.*/


SELECT Name 
FROM Physician 
INNER JOIN Patient 
ON Physician.EmployeeID = Patient.PCP 
GROUP BY Name 
HAVING COUNT(Patient.SSN) > 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Which physicians are in charge of more than one patient? Give me their names.*/


SELECT Name 
FROM Physician 
INNER JOIN Prescribes 
ON Physician.EmployeeID = Prescribes.Physician 
GROUP BY Name 
HAVING COUNT(Prescribes.Patient) > 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the number of rooms located on each block floor.*/


SELECT BlockFloor, COUNT(RoomNumber) 
FROM Room 
GROUP BY BlockFloor

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer How many rooms does each block floor have?*/


SELECT BlockFloor, COUNT(RoomNumber) AS 'Number of Rooms'
FROM Room
GROUP BY BlockFloor

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Find the number of rooms for different block code?*/


SELECT BlockCode, COUNT(RoomNumber) 
FROM Room 
GROUP BY BlockCode

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer How many rooms are located for each block code?*/


SELECT BlockCode, COUNT(RoomNumber) AS 'Number of Rooms'
FROM Room
GROUP BY BlockCode

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What are the unique block codes that have available rooms?*/


SELECT DISTINCT BlockCode 
FROM Room 
WHERE Unavailable = 0

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Tell me the distinct block codes where some rooms are available.*/


SELECT DISTINCT BlockCode 
FROM Room 
WHERE Unavailable = 0

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer How many different types of rooms are there?*/


SELECT COUNT(DISTINCT RoomType) 
FROM Room

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the number of distinct room types available.*/


SELECT COUNT(DISTINCT RoomType) 
FROM Room

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What is the names of the physicians who prescribe medication Thesisin?*/


SELECT Name
FROM Physician
INNER JOIN Prescribes
ON Physician.EmployeeID = Prescribes.Physician
INNER JOIN Medication
ON Prescribes.Medication = Medication.Code
WHERE Medication.Name = 'Thesisin'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to List the names of all the physicians who prescribe Thesisin as medication.*/


SELECT Name 
FROM Physician 
INNER JOIN Prescribes 
ON Physician.EmployeeID = Prescribes.Physician 
INNER JOIN Medication 
ON Prescribes.Medication = Medication.Code 
WHERE Medication.Name = 'Thesisin'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Find the name and position of physicians who prescribe some medication whose brand is X?*/


SELECT Name, Position 
FROM Physician 
INNER JOIN Prescribes 
ON Physician.EmployeeID = Prescribes.Physician 
INNER JOIN Medication 
ON Prescribes.Medication = Medication.Code 
WHERE Medication.Brand = 'X'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Which physicians prescribe a medication of brand X? Tell me the name and position of those physicians.*/


SELECT Name, Position 
FROM Physician 
INNER JOIN Prescribes 
ON Physician.EmployeeID = Prescribes.Physician 
INNER JOIN Medication 
ON Prescribes.Medication = Medication.Code 
WHERE Medication.Brand = 'X'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the number of medications prescribed for each brand.*/


SELECT Brand, COUNT(*) AS 'Number of Medications Prescribed'
FROM Prescribes
JOIN Medication ON Prescribes.Medication = Medication.Code
GROUP BY Brand

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer How many medications are prescribed for each brand?*/


SELECT Brand, COUNT(*) AS 'Number of Medications Prescribed'
FROM Prescribes
JOIN Medication ON Prescribes.Medication = Medication.Code
GROUP BY Brand

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the name of physicians whose position title contains the word 'senior'.*/


SELECT Name 
FROM Physician 
WHERE Position LIKE '%senior%'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to What are the names of the physicians who have 'senior' in their titles.*/


SELECT Name 
FROM Physician 
WHERE Position LIKE '%Senior%'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Find the patient who has the most recent undergoing treatment?*/


SELECT Patient, MAX(DateUndergoes) 
FROM Undergoes 
GROUP BY Patient 
ORDER BY DateUndergoes DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Which patient is undergoing the most recent treatment?*/


SELECT Patient 
FROM Undergoes 
ORDER BY DateUndergoes DESC 
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the names of all patients who have an undergoing treatment and are staying in room 111.*/


SELECT Patient.Name 
FROM Patient 
INNER JOIN Stay ON Patient.SSN = Stay.Patient 
INNER JOIN Undergoes ON Stay.StayID = Undergoes.Stay 
WHERE Stay.Room = 111

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What are the names of patients who are staying in room 111 and have an undergoing treatment?*/


SELECT Patient.Name 
FROM Patient 
INNER JOIN Stay ON Patient.SSN = Stay.Patient 
INNER JOIN Room ON Stay.Room = Room.RoomNumber 
INNER JOIN Undergoes ON Stay.StayID = Undergoes.Stay 
WHERE Room.RoomNumber = 111

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer List the names of all distinct nurses ordered by alphabetical order?*/


SELECT DISTINCT Name
FROM Nurse
ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What is the alphabetically ordered list of all the distinct names of nurses?*/


SELECT DISTINCT Name FROM Nurse ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the names of nurses who are nursing an undergoing treatment.*/


SELECT Nurse.Name 
FROM Nurse 
INNER JOIN Undergoes 
ON Nurse.EmployeeID = Undergoes.AssistingNurse 
WHERE Undergoes.DateUndergoes IS NOT NULL

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Which nurses are in charge of patients undergoing treatments?*/


SELECT Nurse.Name 
FROM Nurse 
INNER JOIN Undergoes 
ON Nurse.EmployeeID = Undergoes.AssistingNurse 
WHERE Undergoes.Procedures IS NOT NULL

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to List the names of all distinct medications, ordered in an alphabetical order.*/


SELECT DISTINCT Name FROM Medication ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What is the alphabetically ordered list of all distinct medications?*/


SELECT DISTINCT Name
FROM Medication
ORDER BY Name ASC

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What are the names of the physician who prescribed the highest dose?*/


SELECT Name
FROM Physician
INNER JOIN Prescribes
ON Physician.EmployeeID = Prescribes.Physician
WHERE Prescribes.Dose = (SELECT MAX(Dose) FROM Prescribes)


/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Find the physician who prescribed the highest dose. What is his or her name?*/


SELECT Name
FROM Physician
INNER JOIN Prescribes
ON Physician.EmployeeID = Prescribes.Physician
WHERE Prescribes.Dose = (SELECT MAX(Dose) FROM Prescribes)


/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to List the physicians' employee ids together with their primary affiliation departments' ids.*/


SELECT Physician.EmployeeID, Department.DepartmentID 
FROM Physician 
INNER JOIN Affiliated_With ON Physician.EmployeeID = Affiliated_With.Physician 
INNER JOIN Department ON Affiliated_With.Department = Department.DepartmentID

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to What are each physician's employee id and department id primarily affiliated.*/


SELECT Physician.EmployeeID, Department.DepartmentID 
FROM Physician 
INNER JOIN Affiliated_With ON Physician.EmployeeID = Affiliated_With.Physician 
INNER JOIN Department ON Affiliated_With.Department = Department.DepartmentID

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to List the names of departments where some physicians are primarily affiliated with.*/


SELECT DISTINCT Department.Name 
FROM Department 
INNER JOIN Affiliated_With 
ON Department.DepartmentID = Affiliated_With.Department 
INNER JOIN Physician 
ON Affiliated_With.Physician = Physician.EmployeeID

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to What are the names of departments that have primarily affiliated physicians.*/


SELECT Department.Name 
FROM Department 
INNER JOIN Affiliated_With ON Department.DepartmentID = Affiliated_With.Department 
INNER JOIN Physician ON Affiliated_With.Physician = Physician.EmployeeID 
GROUP BY Department.Name 
HAVING COUNT(Physician.EmployeeID) > 0

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to What nurses are on call with block floor 1 and block code 1? Tell me their names.*/


SELECT Nurse.Name 
FROM Nurse 
INNER JOIN On_Call 
ON Nurse.EmployeeID = On_Call.Nurse 
WHERE On_Call.BlockFloor = 1 
AND On_Call.BlockCode = 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the ids of the nurses who are on call in block floor 1 and block code 1.*/


SELECT Nurse 
FROM On_Call 
WHERE BlockFloor = 1 AND BlockCode = 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What are the highest cost, lowest cost and average cost of procedures?*/


SELECT MAX(Cost) AS Highest_Cost, MIN(Cost) AS Lowest_Cost, AVG(Cost) AS Average_Cost
FROM Procedures

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Tell me the highest, lowest, and average cost of procedures.*/


SELECT MAX(Cost) AS Highest_Cost, MIN(Cost) AS Lowest_Cost, AVG(Cost) AS Average_Cost
FROM Procedures

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to List the name and cost of all procedures sorted by the cost from the highest to the lowest.*/


SELECT Name, Cost
FROM Procedures
ORDER BY Cost DESC

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Sort the list of names and costs of all procedures in the descending order of cost.*/


SELECT Name, Cost FROM Procedures ORDER BY Cost DESC

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the three most expensive procedures.*/


SELECT TOP 3 Name, Cost
FROM Procedures
ORDER BY Cost DESC

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What are the three most costly procedures?*/


SELECT TOP 3 Name, Cost
FROM Procedures
ORDER BY Cost DESC

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the physicians who are trained in a procedure that costs more than 5000.*/


SELECT p.Name 
FROM Physician p 
INNER JOIN Trained_In t ON p.EmployeeID = t.Physician 
INNER JOIN Procedures pr ON t.Treatment = pr.Code 
WHERE pr.Cost > 5000

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Which physicians are trained in procedures that are more expensive than 5000?*/


SELECT p.Name
FROM Physician p
INNER JOIN Trained_In t ON p.EmployeeID = t.Physician
INNER JOIN Procedures pr ON t.Treatment = pr.Code
WHERE pr.Cost > 5000

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Find the physician who was trained in the most expensive procedure?*/


SELECT p.Name
FROM Physician p
INNER JOIN Trained_In t ON p.EmployeeID = t.Physician
INNER JOIN Procedures pr ON t.Treatment = pr.Code
ORDER BY pr.Cost DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Which physician was trained in the procedure that costs the most.*/


SELECT p.Name
FROM Physician p
INNER JOIN Trained_In t ON p.EmployeeID = t.Physician
INNER JOIN Procedures pr ON t.Treatment = pr.Code
ORDER BY pr.Cost DESC
LIMIT 1

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What is the average cost of procedures that physician John Wen was trained in?*/


SELECT AVG(p.Cost)
FROM Procedures p
INNER JOIN Trained_In t ON p.Code = t.Treatment
INNER JOIN Physician ph ON t.Physician = ph.EmployeeID
WHERE ph.Name = 'John Wen'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Compute the mean price of procedures physician John Wen was trained in.*/


SELECT AVG(p.Cost)
FROM Procedures p
INNER JOIN Trained_In t ON p.Code = t.Treatment
INNER JOIN Physician ph ON t.Physician = ph.EmployeeID
WHERE ph.Name = 'John Wen'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the names of procedures which physician John Wen was trained in.*/


SELECT p.Name 
FROM Procedures p 
INNER JOIN Trained_In t 
ON p.Code = t.Treatment 
INNER JOIN Physician ph 
ON t.Physician = ph.EmployeeID 
WHERE ph.Name = 'John Wen'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What are the names of procedures physician John Wen was trained in?*/


SELECT p.Name
FROM Procedures p
INNER JOIN Trained_In t ON p.Code = t.Treatment
INNER JOIN Physician ph ON t.Physician = ph.EmployeeID
WHERE ph.Name = 'John Wen'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find all procedures which cost more than 1000 or which physician John Wen was trained in.*/


SELECT p.Name, p.Cost
FROM Procedures p
LEFT JOIN Trained_In t ON p.Code = t.Treatment
WHERE p.Cost > 1000 OR t.Physician = 'John Wen'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What are the procedures that cost more than 1000 or are specialized in by physician John Wen?*/


SELECT p.Name, p.Cost
FROM Procedures p
INNER JOIN Trained_In t ON p.Code = t.Treatment
INNER JOIN Physician ph ON t.Physician = ph.EmployeeID
WHERE p.Cost > 1000 OR ph.Name = 'John Wen'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Find the names of all procedures which cost more than 1000 but which physician John Wen was not trained in?*/


SELECT Procedures.Name
FROM Procedures
WHERE Procedures.Cost > 1000
AND Procedures.Code NOT IN (SELECT Trained_In.Treatment
                           FROM Trained_In
                           WHERE Trained_In.Physician = 'John Wen')

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer Among the procedures that cost more than 1000, which were not specialized in by physician John Wen?*/


SELECT p.Name
FROM Procedures p
WHERE p.Cost > 1000
AND p.Code NOT IN (SELECT t.Treatment
                   FROM Trained_In t
                   WHERE t.Physician = 'John Wen') 

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the names of all procedures such that the cost is less than 5000 and physician John Wen was trained in.*/


SELECT Procedures.Name 
FROM Procedures 
INNER JOIN Trained_In 
ON Procedures.Code = Trained_In.Treatment 
WHERE Procedures.Cost < 5000 
AND Trained_In.Physician = 'John Wen'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What procedures cost less than 5000 and have John Wen as a trained physician?*/


SELECT p.Name, p.Cost
FROM Procedures p
INNER JOIN Trained_In t ON p.Code = t.Treatment
WHERE t.Physician = 'John Wen'
AND p.Cost < 5000

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the name of physicians who are affiliated with both Surgery and Psychiatry departments.*/


SELECT p.Name 
FROM Physician p 
INNER JOIN Affiliated_With a ON p.EmployeeID = a.Physician 
INNER JOIN Department d ON a.Department = d.DepartmentID 
WHERE d.Name IN ('Surgery', 'Psychiatry') 
GROUP BY p.Name 
HAVING COUNT(*) = 2

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Which physicians are affiliated with both Surgery and Psychiatry departments? Tell me their names.*/


SELECT Name
FROM Physician
WHERE EmployeeID IN (SELECT Physician
                     FROM Affiliated_With
                     WHERE Department IN (SELECT DepartmentID
                                         FROM Department
                                         WHERE Name IN ('Surgery', 'Psychiatry')))


/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the name of physicians who are affiliated with Surgery or Psychiatry department.*/


SELECT Name 
FROM Physician 
INNER JOIN Affiliated_With 
ON Physician.EmployeeID = Affiliated_With.Physician 
INNER JOIN Department 
ON Affiliated_With.Department = Department.DepartmentID 
WHERE Department.Name IN ('Surgery', 'Psychiatry')

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Which physicians are affiliated with either Surgery or Psychiatry department? Give me their names.*/


SELECT Name 
FROM Physician 
INNER JOIN Affiliated_With 
ON Physician.EmployeeID = Affiliated_With.Physician 
INNER JOIN Department 
ON Affiliated_With.Department = Department.DepartmentID 
WHERE Department.Name IN ('Surgery', 'Psychiatry')

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the names of patients who are not using the medication of Procrastin-X.*/


SELECT Name 
FROM Patient 
WHERE SSN NOT IN (SELECT Patient 
                  FROM Prescribes 
                  WHERE Medication = 'Procrastin-X')

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to What are the names of patients who are not taking the medication of Procrastin-X.*/


SELECT Name 
FROM Patient 
WHERE SSN NOT IN (SELECT Patient 
                  FROM Prescribes 
                  WHERE Medication = 'Procrastin-X')

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the number of patients who are not using the medication of Procrastin-X.*/


SELECT COUNT(*) 
FROM Patient 
LEFT JOIN Prescribes 
ON Patient.SSN = Prescribes.Patient 
WHERE Prescribes.Medication != 'Procrastin-X'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer How many patients are not using Procrastin-X as medication?*/


SELECT COUNT(*)
FROM Prescribes
WHERE Medication != 'Procrastin-X'

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer How many appointments are there?*/


SELECT COUNT(*) FROM Appointment

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Count how many appointments have been made in total.*/


SELECT COUNT(*) FROM Appointment

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to Find the names of nurses who are on call.*/


SELECT Nurse.Name 
FROM Nurse 
INNER JOIN On_Call 
ON Nurse.EmployeeID = On_Call.Nurse

/*Here are Mysql tables, with their properties:

Physician(EmployeeID, Name, Position, SSN, CONSTRAINT)
Department(DepartmentID, Name, Head, CONSTRAINT, CONSTRAINT)
Affiliated_With(Physician, Department, CONSTRAINT, CONSTRAINT)
Procedures(Code, Name, Cost)
Trained_In(Physician, Treatment, CertificationDate, CertificationExpires, CONSTRAINT, CONSTRAINT)
Patient(SSN, Name, Address, Phone, InsuranceID, PCP, CONSTRAINT)
Nurse(EmployeeID, Name, Position, Registered, SSN)
Appointment(AppointmentID, Patient, PrepNurse, Physician, Start, End, ExaminationRoom, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Medication(Code, Name, Brand, Description)
Prescribes(Physician, Patient, Medication, Date, Appointment, Dose, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)
Block(BlockFloor, BlockCode)
Room(RoomNumber, RoomType, BlockFloor, BlockCode, Unavailable, CONSTRAINT)
On_Call(Nurse, BlockFloor, BlockCode, OnCallStart, OnCallEnd, CONSTRAINT, CONSTRAINT)
Stay(StayID, Patient, Room, StayStart, StayEnd, CONSTRAINT, CONSTRAINT)
Undergoes(Patient, Procedures, Stay, DateUndergoes, Physician, AssistingNurse, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT, CONSTRAINT)

Create a SQL request to answer What are the distinct names of nurses on call?*/


SELECT DISTINCT Name
FROM Nurse
INNER JOIN On_Call
ON Nurse.EmployeeID = On_Call.Nurse

