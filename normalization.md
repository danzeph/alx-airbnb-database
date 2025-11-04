#  Normalization of the alx-airbnb-database

Normalization is the process of structuring a relational database to minimize redudancy and improve data integrity.

Potential redudancy 
  1. The phone number in the User table is a multi valued attitude and therefore it would violates First Normal form because each columns values must be unique and atomic.

Adjustments Made
  A seperate table for phone number is created to achieve first normal form
  Other than that every field is normalized
  Below is short note on why every table and fields in the database are normalized

Explanation
First Normal Form(1NF)
  1. Each column contains atomic values
  2. Each record is unique
  3. No repeating groups or arrays are seen
      All these shows that my database has met first normal form(1NF)
     
     
Second Normal Form(2NF)
  1. Met 1NF
  2. No Partial dependency: all non-key attributes depends on the primary key
      All Tables use a single-attribute primary key(UUID), so parital dependencies does not exist in the database
     
     
Third Normal Form(3NF)
  1. Met 2NF
  2. No transitive dependencies: non-key attributes does not depend on other non-key attributes

Analysis 
  1. For User Table attributes depend only on the user_id.
  2. For the Property Table, host_id references User and all otherr attributs describe the property itself.
  3. For the Booking Table, table the total_price might be a derived attribute but kept stored in the table and justified and not a 3NF violation.
  4. For the Payment Table, attributes depend on booking_id then again no transitive dependency.
  5. For the Review Table, attributes depend only on the review_id.
  6. For the Message Table. attributes depend only on the message_id
  All tables satisfy 3NF.

Verification of Referential Integrity
 =
 dkdkd
  
  
      
     

