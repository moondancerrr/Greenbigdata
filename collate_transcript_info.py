#!/usr/bin env python3

import gzip
import re
import sys


class Transcript:
   def __init__(self, idx, chrom, start, end, strand):
      self.idx = idx
      self.chrom = chrom
      self.start = start
      self.end = end
      self.strand = strand
      self.exons = set()

   def add_exon(self, start, end):
      self.exons.add((start, end))

   def show(self):
      sorted_exons = sorted(self.exons)
      head = f"{self.idx}\t{self.chrom}\t{self.start}\t{self.end}\t{self.strand}"
      pos = ",".join([str(x - self.start) for x,y in sorted_exons])
      length = ",".join([str(y-x+1) for x,y in sorted_exons])
      return f"{head}\t{pos}\t{length}"



def main(f):
   tx = dict()
   for line in f:
      items = line.decode("ascii").split("\t")
      if items[0].startswith("#"): continue
      if items[2] not in frozenset(["transcript", "exon"]): continue
      (idx,) = re.search(r'transcript_id "([^"]+)";', items[8]).groups()
      if items[2] == "transcript":
         tx[idx] = Transcript(idx, items[0], int(items[3]), int(items[4]), items[6])
      elif items[2] == "exon":
         tx[idx].add_exon(int(items[3]), int(items[4]))
   for trx in tx.values():
      print(trx.show())


if __name__ == "__main__":
   with gzip.open(sys.argv[1]) as f:
      main(f)
