import { db } from 'src/lib/db'

export const piTuplets = () => {
  return db.piTuplet.findMany({ orderBy: { slicePos: 'asc' } })
}
