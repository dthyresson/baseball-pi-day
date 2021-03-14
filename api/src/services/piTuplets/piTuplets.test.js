import { piTuplets } from './piTuplets'

describe('piTuplets', () => {
  scenario('returns all piTuplets', async (scenario) => {
    const result = await piTuplets()

    expect(result.length).toEqual(Object.keys(scenario.piTuplet).length)
  })
})
