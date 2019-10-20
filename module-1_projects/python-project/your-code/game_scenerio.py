# importing stuff
import time
import sys
from ascii_graphics import *
import ascii_graphics

# defining function for printing slow
def print_slow(str):
    """
    print slowly
    """
    for letter in str + "\n\n":
        sys.stdout.write(letter)
        sys.stdout.flush()
        time.sleep(0.05)
    
# starting the game
def welcome_message():    
    """
    Start the game
    """
    ascii_graphics.game_start()    
    print_slow("""
You wake up on a couch and find yourself in a strange house with 
no windows which you have never been to before. You don't remember 
why you are here and what had happened before. You feel some unknown 
danger is approaching and you must get out of the house.
                            NOW!
""")

start = time.time()

def victory():
    ascii_graphics.game_end()
    end = time.time()
    print("it took you " + CRED + str(int(end - start)) + CEND + ' seconds to escape the room :)')
