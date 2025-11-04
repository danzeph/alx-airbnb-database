Entities and Attributes

User
  1. user_id
  2. first_name
  3. last_name
  4. email
  5. password_hash
  6. phone_nmberr
  7. role
  8. created_at

Property
  1. property_id
  2. host_id
  3. name
  4. descripition
  5. location
  6. pricepernight
  7. created_at
  8. updated_at

Booking
  1. booking_id
  2. property_id
  3. user_id
  4. start_date
  5. end_date
  6. total_price
  7. status
  8. created_at

Payment
  1. payment_id
  2. booking_id
  3. amount
  4. payment_date
  5. payment_method

Review
  1. review_id
  2. property_id
  3. user_id
  4. rating
  5. comment
  6. created_at

Message
  1. message_id
  2. sender_id
  3. message_body
  4. sent_at
     
  
  

