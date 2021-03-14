/*
  Warnings:

  - You are about to drop the column `home_team_abbreviation` on the `PiTuplet` table. All the data in the column will be lost.
  - You are about to drop the column `away_team_abbreviation` on the `PiTuplet` table. All the data in the column will be lost.
  - You are about to drop the column `home_away_score_pair` on the `PiTuplet` table. All the data in the column will be lost.
  - You are about to drop the column `away_home_score_pair` on the `PiTuplet` table. All the data in the column will be lost.
  - You are about to drop the column `home_team_final_score` on the `PiTuplet` table. All the data in the column will be lost.
  - You are about to drop the column `away_team_final_score` on the `PiTuplet` table. All the data in the column will be lost.
  - Added the required column `homeTeamAbbreviation` to the `PiTuplet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `awayTeamAbbreviation` to the `PiTuplet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `homeAwayScorePair` to the `PiTuplet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `awayHomeScorePair` to the `PiTuplet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `homeTeamFinalScore` to the `PiTuplet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `awayTeamFinalScore` to the `PiTuplet` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "PiTuplet.away_team_abbreviation_index";

-- DropIndex
DROP INDEX "PiTuplet.home_team_abbreviation_index";

-- AlterTable
ALTER TABLE "PiTuplet" DROP COLUMN "home_team_abbreviation",
DROP COLUMN "away_team_abbreviation",
DROP COLUMN "home_away_score_pair",
DROP COLUMN "away_home_score_pair",
DROP COLUMN "home_team_final_score",
DROP COLUMN "away_team_final_score",
ADD COLUMN     "homeTeamAbbreviation" TEXT NOT NULL,
ADD COLUMN     "awayTeamAbbreviation" TEXT NOT NULL,
ADD COLUMN     "homeAwayScorePair" TEXT NOT NULL,
ADD COLUMN     "awayHomeScorePair" TEXT NOT NULL,
ADD COLUMN     "homeTeamFinalScore" INTEGER NOT NULL,
ADD COLUMN     "awayTeamFinalScore" INTEGER NOT NULL;

-- CreateIndex
CREATE INDEX "PiTuplet.homeTeamAbbreviation_index" ON "PiTuplet"("homeTeamAbbreviation");

-- CreateIndex
CREATE INDEX "PiTuplet.awayTeamAbbreviation_index" ON "PiTuplet"("awayTeamAbbreviation");
