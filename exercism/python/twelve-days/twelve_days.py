#!/usr/bin/env python3

def recite(start_verse, end_verse):
    song = [
            "a Partridge in a Pear Tree."
            "two Turtle Doves, "
            "three French Hens, "
            "four Calling Birds, "
            "five Gold Rings, "
            "six Geese-a-Laying, "
            "seven Swans-a-Swimming, "
            "eight Maids-a-Milking, "
            "nine Ladies Dancing, "
            "ten Lords-a-Leaping, "
            "eleven Pipers Piping, "
            "twelve Drummers Drumming, "
    ]
    lines = ""
    #for i in range(start_verse):
    #    lines += song[i]
    print(song)

if __name__ == "__main__":
    recite(2, 2)
