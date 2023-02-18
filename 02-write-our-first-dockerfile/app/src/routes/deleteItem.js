import db from '../persistence/sqlite.js';

export default async (req, res) => {
  await db.removeItem(req.params.id);
  res.sendStatus(200);
};
