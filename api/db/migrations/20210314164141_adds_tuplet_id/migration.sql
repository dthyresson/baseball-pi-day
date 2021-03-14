/*
  Warnings:

  - Added the required column `tupletId` to the `PiTuplet` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "PiTuplet" ADD COLUMN     "tupletId" TEXT NOT NULL;

-- CreateIndex
CREATE INDEX "PiTuplet.tupletId_index" ON "PiTuplet"("tupletId");
