/* eslint-disable no-console */

const fs = require('fs')
const path = require('path')
const csv = require('fast-csv')
const camelcaseKeys = require('camelcase-keys')

const { PrismaClient } = require('@prisma/client')
const dotenv = require('dotenv')

dotenv.config()
const db = new PrismaClient()

async function main() {
  let data = []

  fs.createReadStream(path.resolve(__dirname, 'data', 'digits.csv'))
    .pipe(csv.parse({ headers: true }))
    .on('error', (error) => console.error(error))
    .on('data', (row) => {
      let tuplet = camelcaseKeys(row)
      tuplet.tupletId = row.id
      tuplet.slicePos = parseInt(tuplet.slicePos, 10)
      tuplet.inning = parseInt(tuplet.inning, 10)
      tuplet.clockSeconds = parseInt(tuplet.clockSeconds, 10)
      tuplet.startedAt = new Date(Date.parse(tuplet.startedAt))
      tuplet.homeTeamScore = parseInt(tuplet.homeTeamScore, 10)
      tuplet.awayTeamScore = parseInt(tuplet.awayTeamScore, 10)
      tuplet.isOver = tuplet.isOver === 'FALSE' ? false : true
      tuplet.homeTeamFinalScore = parseInt(tuplet.homeTeamFinalScore, 10)
      tuplet.awayTeamFinalScore = parseInt(tuplet.awayTeamFinalScore, 10)
      tuplet.r = parseInt(tuplet.r, 10)
      delete tuplet.id

      data.push(tuplet)
    })
    .on('end', async (rowCount) => {
      try {
        const result = await db.piTuplet.createMany({
          data,
          skipDuplicates: true,
        })

        console.log(`Created ${result.count} tuplets!`)
        console.log(`Parsed ${rowCount} rows`)

        await db.$disconnect()
      } catch (error) {
        console.log(error)
      }
    })

  // console.info('No data to seed. See api/db/seed.js for info.')
}

main()
  .catch((e) => console.error(e))
  .finally(async () => {})
