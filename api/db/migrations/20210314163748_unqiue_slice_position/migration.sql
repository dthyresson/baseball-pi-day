/*
  Warnings:

  - The migration will add a unique constraint covering the columns `[slicePos]` on the table `PiTuplet`. If there are existing duplicate values, the migration will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "PiTuplet.slicePos_unique" ON "PiTuplet"("slicePos");
