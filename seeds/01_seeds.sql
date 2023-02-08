INSERT INTO
  users (name, email, password)
VALUES
  (
    'Person 1',
    'p1@gmail.com',
    '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
  ),
  (
    'Person 2',
    'p2@gmail.com',
    '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
  ),
  (
    'Owner 1',
    'o1@gmail.com',
    '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
  );

INSERT INTO
  properties (
    owner_id,
    title,
    description,
    thumbnail_photo_url,
    cover_photo_url,
    cost_per_night,
    parking_spaces,
    number_of_bathrooms,
    number_of_bedrooms,
    country,
    street,
    city,
    province,
    post_code,
    active
  )
VALUES
  (
    3,
    'Amazing Toronto P1',
    'Amazing bedroom',
    'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg',
    'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg',
    120,
    2,
    3,
    3,
    'Canada',
    'King st',
    'Toronto',
    'Ontario',
    'L4G 8G8',
    TRUE
  ),
  (
    3,
    'Amazing Toronto P2',
    'Amazing suite 2',
    'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg',
    'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg',
    200,
    3,
    5,
    5,
    'Canada',
    'Bay st',
    'Toronto',
    'Ontario',
    'L4G 9G9',
    TRUE
  ),
  (
    3,
    'Amazing Toronto P3',
    'Amazing suite 101',
    'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg',
    'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg',
    1000,
    5,
    10,
    10,
    'Canada',
    'Adele st',
    'Toronto',
    'Ontario',
    'L4G 9G9',
    TRUE
  );

INSERT INTO
  reservations (start_date, end_date, property_id, guest_id)
VALUES
  ('2018-09-11', '2018-09-26', 1, 1),
  ('2019-01-04', '2019-02-01', 2, 2),
  ('2021-10-01', '2021-10-14', 3, 3);

INSERT INTO
  property_reviews (
    guest_id,
    property_id,
    reservation_id,
    rating,
    message
  )
VALUES
  (1, 1, 1, 8, 'amazing place to stay'),
  (2, 3, 3, 9, 'GG');