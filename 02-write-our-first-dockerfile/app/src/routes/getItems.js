import db from '../persistence/sqlite.js';

export default async (req, res) => {
  const items = await db.getItems();
  res.send(items);
};
