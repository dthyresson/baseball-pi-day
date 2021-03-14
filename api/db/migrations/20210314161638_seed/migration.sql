-- CreateTable
CREATE TABLE "PiTuplet" (
    "id" TEXT NOT NULL,
    "slicePos" INTEGER NOT NULL,
    "piSlice" TEXT NOT NULL,
    "leagueId" TEXT NOT NULL,
    "leagueName" TEXT NOT NULL,
    "leagueAbbreviation" TEXT NOT NULL,
    "seasonId" TEXT NOT NULL,
    "seasonName" TEXT NOT NULL,
    "gameId" TEXT NOT NULL,
    "gameSlug" TEXT NOT NULL,
    "homeTeamId" TEXT NOT NULL,
    "homeTeamName" TEXT NOT NULL,
    "homeTeamLocation" TEXT NOT NULL,
    "homeTeamNickname" TEXT NOT NULL,
    "home_team_abbreviation" TEXT NOT NULL,
    "awayTeamId" TEXT NOT NULL,
    "awayTeamName" TEXT NOT NULL,
    "awayTeamLocation" TEXT NOT NULL,
    "awayTeamNickname" TEXT NOT NULL,
    "away_team_abbreviation" TEXT NOT NULL,
    "intervalType" TEXT NOT NULL,
    "inning" INTEGER NOT NULL,
    "clockSeconds" INTEGER NOT NULL,
    "inningHalf" TEXT NOT NULL,
    "homeTeamScore" INTEGER NOT NULL,
    "awayTeamScore" INTEGER NOT NULL,
    "totalScore" TEXT NOT NULL,
    "home_away_score_pair" TEXT NOT NULL,
    "away_home_score_pair" TEXT NOT NULL,
    "homeTeamOutcome" TEXT NOT NULL,
    "awayTeamOutcome" TEXT NOT NULL,
    "isOver" BOOLEAN NOT NULL,
    "startedAt" TIMESTAMP(3) NOT NULL,
    "home_team_final_score" INTEGER NOT NULL,
    "away_team_final_score" INTEGER NOT NULL,
    "venueName" TEXT NOT NULL,
    "r" INTEGER NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "PiTuplet.slicePos_index" ON "PiTuplet"("slicePos");

-- CreateIndex
CREATE INDEX "PiTuplet.piSlice_index" ON "PiTuplet"("piSlice");

-- CreateIndex
CREATE INDEX "PiTuplet.leagueId_index" ON "PiTuplet"("leagueId");

-- CreateIndex
CREATE INDEX "PiTuplet.leagueName_index" ON "PiTuplet"("leagueName");

-- CreateIndex
CREATE INDEX "PiTuplet.leagueAbbreviation_index" ON "PiTuplet"("leagueAbbreviation");

-- CreateIndex
CREATE INDEX "PiTuplet.seasonId_index" ON "PiTuplet"("seasonId");

-- CreateIndex
CREATE INDEX "PiTuplet.seasonName_index" ON "PiTuplet"("seasonName");

-- CreateIndex
CREATE INDEX "PiTuplet.gameId_index" ON "PiTuplet"("gameId");

-- CreateIndex
CREATE INDEX "PiTuplet.gameSlug_index" ON "PiTuplet"("gameSlug");

-- CreateIndex
CREATE INDEX "PiTuplet.homeTeamId_index" ON "PiTuplet"("homeTeamId");

-- CreateIndex
CREATE INDEX "PiTuplet.homeTeamName_index" ON "PiTuplet"("homeTeamName");

-- CreateIndex
CREATE INDEX "PiTuplet.homeTeamLocation_index" ON "PiTuplet"("homeTeamLocation");

-- CreateIndex
CREATE INDEX "PiTuplet.homeTeamNickname_index" ON "PiTuplet"("homeTeamNickname");

-- CreateIndex
CREATE INDEX "PiTuplet.home_team_abbreviation_index" ON "PiTuplet"("home_team_abbreviation");

-- CreateIndex
CREATE INDEX "PiTuplet.awayTeamId_index" ON "PiTuplet"("awayTeamId");

-- CreateIndex
CREATE INDEX "PiTuplet.awayTeamName_index" ON "PiTuplet"("awayTeamName");

-- CreateIndex
CREATE INDEX "PiTuplet.awayTeamLocation_index" ON "PiTuplet"("awayTeamLocation");

-- CreateIndex
CREATE INDEX "PiTuplet.awayTeamNickname_index" ON "PiTuplet"("awayTeamNickname");

-- CreateIndex
CREATE INDEX "PiTuplet.away_team_abbreviation_index" ON "PiTuplet"("away_team_abbreviation");
