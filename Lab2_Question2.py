# -*- coding: utf-8 -*-
"""
Created on Thu Feb 17 19:07:58 2022

@author: Zach Washburn
"""



from mrjob.job import MRJob
from mrjob.step import MRStep
import re

Re_word = re.compile(r"(^\S+).+(\d{3})\s\S+$")

class MrMostUsed(MRJob):                                                   


    def mapper(self, _, line):
        for unit in Re_word.findall(line):
            if unit[0] == "163.206.89.4":
                yield (unit[0], 1)

    def reducer(self, word, counts):
        yield (word, sum(counts))

if __name__ == '__main__':
    MrMostUsed.run()
