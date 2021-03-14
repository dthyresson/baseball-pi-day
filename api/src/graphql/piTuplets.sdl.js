export const schema = gql`
  type PiTuplet {
    id: String!
    tupletId: String!
    slicePos: Int!
    piSlice: String!
    leagueId: String!
    leagueName: String!
    leagueAbbreviation: String!
    seasonId: String!
    seasonName: String!
    gameId: String!
    gameSlug: String!
    homeTeamId: String!
    homeTeamName: String!
    homeTeamLocation: String!
    homeTeamNickname: String!
    homeTeamAbbreviation: String!
    awayTeamId: String!
    awayTeamName: String!
    awayTeamLocation: String!
    awayTeamNickname: String!
    awayTeamAbbreviation: String!
    intervalType: String!
    inning: Int!
    clockSeconds: Int!
    inningHalf: String!
    homeTeamScore: Int!
    awayTeamScore: Int!
    totalScore: String!
    homeAwayScorePair: String!
    awayHomeScorePair: String!
    homeTeamOutcome: String!
    awayTeamOutcome: String!
    isOver: Boolean!
    startedAt: DateTime!
    homeTeamFinalScore: Int!
    awayTeamFinalScore: Int!
    venueName: String!
    r: Int!
  }

  type Query {
    piTuplets: [PiTuplet!]!
  }

  input CreatePiTupletInput {
    tupletId: String!
    slicePos: Int!
    piSlice: String!
    leagueId: String!
    leagueName: String!
    leagueAbbreviation: String!
    seasonId: String!
    seasonName: String!
    gameId: String!
    gameSlug: String!
    homeTeamId: String!
    homeTeamName: String!
    homeTeamLocation: String!
    homeTeamNickname: String!
    homeTeamAbbreviation: String!
    awayTeamId: String!
    awayTeamName: String!
    awayTeamLocation: String!
    awayTeamNickname: String!
    awayTeamAbbreviation: String!
    intervalType: String!
    inning: Int!
    clockSeconds: Int!
    inningHalf: String!
    homeTeamScore: Int!
    awayTeamScore: Int!
    totalScore: String!
    homeAwayScorePair: String!
    awayHomeScorePair: String!
    homeTeamOutcome: String!
    awayTeamOutcome: String!
    isOver: Boolean!
    startedAt: DateTime!
    homeTeamFinalScore: Int!
    awayTeamFinalScore: Int!
    venueName: String!
    r: Int!
  }

  input UpdatePiTupletInput {
    tupletId: String
    slicePos: Int
    piSlice: String
    leagueId: String
    leagueName: String
    leagueAbbreviation: String
    seasonId: String
    seasonName: String
    gameId: String
    gameSlug: String
    homeTeamId: String
    homeTeamName: String
    homeTeamLocation: String
    homeTeamNickname: String
    homeTeamAbbreviation: String
    awayTeamId: String
    awayTeamName: String
    awayTeamLocation: String
    awayTeamNickname: String
    awayTeamAbbreviation: String
    intervalType: String
    inning: Int
    clockSeconds: Int
    inningHalf: String
    homeTeamScore: Int
    awayTeamScore: Int
    totalScore: String
    homeAwayScorePair: String
    awayHomeScorePair: String
    homeTeamOutcome: String
    awayTeamOutcome: String
    isOver: Boolean
    startedAt: DateTime
    homeTeamFinalScore: Int
    awayTeamFinalScore: Int
    venueName: String
    r: Int
  }
`
