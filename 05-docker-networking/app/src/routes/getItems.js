import db from '../persistence/mysql.js';

export default async (req, res) => {
  const items = await db.getItems();
  res.send(items);
};
