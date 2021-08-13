#!/usr/bin/env python3

def recite(start_verse, end_verse):
    days = {"1": ["first", "and a Partridge in a Pear Tree."],
        "2": ["second", "two Turtle Doves, "],
        "3": ["third", "three French Hens, "],
        "4": ["fourth", "four Calling Birds, "],
        "5": ["fifth", "five Gold Rings, "],
        "6": ["sixth", "six Geese-a-laying, "],
        "7": ["seventh", "seven Swans-a-Swimming, "],
        "8": ["eighth", "eight Maids-a-Milking, "],
        "9": ["ninth", "nine Ladies Dancing, " ],
        "10": ["tenth", "ten Lords-a-Leaping, "],
        "11": ["eleventh", "eleven Pipers Piping, "],
        "12": ["twelfth", "twleve Drummers Drumming, "]}
    songlist = []
    song = f"On the {days[str(start_verse)][0]} day of Christmas my true love gave to me: "
    for i in range(start_verse, 0, -1):
        song += days[str(i)][1]
    #print([i for i in song])
    songlist.append(song)
    return songlist

#if __name__ == "__main__":
#    recite(2, 2)
