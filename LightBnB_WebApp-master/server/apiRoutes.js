module.exports = function(router, database) {
  router.get('/properties', (req, res) => {
    database.getAllProperties(req.query, 20)
      .then(properties => res.send({ properties }))
      .catch(e => {
        console.error(e);
        res.send(e);
      });
  });

  router.get('/reservations', (req, res) => {
    const userId = req.session.userId;
    if (!userId) {
      res.error("💩");
      return;
    }
    database.getAllReservations(userId)
      .then(reservations => res.send({ reservations }))
      .catch(e => {
        console.error(e);
        res.send(e);
      });
  });

  router.post('/reservations/new', (req, res) => {
    const userId = req.session.userId;
    if (!userId) {
      res.error("💩");
      return;
    }

    console.log({id: userId, ...req.body});
    database.makeAReservation({id: userId, ...req.body })
      .then(reservation => res.send(reservation))
      .catch(e => {
        console.error(e);
        res.send(e);
      });
    
    // database.getAllReservations(userId)
    //   .then(reservations => res.send({ reservations }))
    //   .catch(e => {
    //     console.error(e);
    //     res.send(e);
    //   });
  });

  router.post('/properties', (req, res) => {
    const userId = req.session.userId;
    database.addProperty({ ...req.body, owner_id: userId })
      .then(property => {
        res.send(property);
      })
      .catch(e => {
        console.error(e);
        res.send(e);
      });
  });

  return router;
};