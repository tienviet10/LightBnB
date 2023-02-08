SELECT
  reservations.id,
  title,
  cost_per_night,
  start_date,
  (
    SELECT
      AVG(rating) as average_rating
    FROM
      properties y
      JOIN property_reviews ON y.id = property_id
    WHERE
      x.id = y.id
    GROUP BY
      y.id
  )
FROM
  reservations
  JOIN properties x ON reservations.property_id = x.id
WHERE
  guest_id = '1'
ORDER BY
  start_date
LIMIT
  10;