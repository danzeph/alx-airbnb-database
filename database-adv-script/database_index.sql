-- Indexes on the user table
-- user_id as our primary is automatically indexed
CREATE INDEX indx_users_email ON users(role);
CREATE INDEX inx_users_role ON users(created_at);


-- Indexes on the property table
--  property_id primary is automatically indexed
CREATE INDEX idx_property_location ON property(location);
CREATE INDEX idx_property_pricepernight ON property(pricepernight);

-- Indexes on the user table
-- booking_id primary is automatically indexed
-- user_id is foreign key and automatically indexed
-- property_id is foreign key and automatically indexed
CREATE INDEX idx_booking_start_date ON booking(start_date);
CREATE INDEX idx_booking_end_date ON booking(end_date);
CREATE INDEX idx_booking_status ON booking(status);
