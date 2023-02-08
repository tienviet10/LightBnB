-- SELECT
--   reservations.id,
--   title,
--   cost_per_night,
--   start_date,
--   (
--     SELECT
--       AVG(rating) as average_rating
--     FROM
--       properties y
--       JOIN property_reviews ON y.id = property_id
--     WHERE
--       x.id = y.id
--     GROUP BY
--       y.id
--   )
-- FROM
--   reservations
--   JOIN properties x ON reservations.property_id = x.id
-- WHERE
--   guest_id = '1'
-- ORDER BY
--   start_date
-- LIMIT
--   10;
SELECT
  reservations.id,
  properties.title,
  properties.cost_per_night,
  reservations.start_date,
  avg(rating) as average_rating
FROM
  reservations
  JOIN properties ON reservations.property_id = properties.id
  JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE
  reservations.guest_id = 1
GROUP BY
  properties.id,
  reservations.id
ORDER BY
  reservations.start_date
LIMIT
  10;