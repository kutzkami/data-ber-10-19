# defining colour scheme

CEND    = '\33[0m'
CBOLD   = '\33[1m'
CITALIC = '\33[3m'
CRED    = '\33[31m'
CGREEN  = '\33[32m'
CYELLOW = '\33[33m'
CBLUE   = '\33[34m'
CVIOLET = '\33[35m'


def game_start():
        
    """
    Start the game
    """
    print(CRED + """\

       _______  _______  _______  _______  _______  _______      
      (  ____ \(  ____ \(  ____ \(  ___  )(  ____ )(  ____ \     
      | (    \/| (    \/| (    \/| (   ) || (    )|| (    \/     
      | (__    | (_____ | |      | (___) || (____)|| (__         
      |  __)   (_____  )| |      |  ___  ||  _____)|  __)        
      | (            ) || |      | (   ) || (      | (           
      | (____/\/\____) || (____/\| )   ( || )      | (____/\     
      (_______/\_______)(_______/|/     \||/       (_______/     
_________          _______    _______  _______  _______  _______ 
\__   __/|\     /|(  ____ \  (  ____ )(  ___  )(  ___  )(       )
   ) (   | )   ( || (    \/  | (    )|| (   ) || (   ) || () () |
   | |   | (___) || (__      | (____)|| |   | || |   | || || || |
   | |   |  ___  ||  __)     |     __)| |   | || |   | || |(_)| |
   | |   | (   ) || (        | (\ (   | |   | || |   | || |   | |
   | |   | )   ( || (____/\  | ) \ \__| (___) || (___) || )   ( |
   )_(   |/     \|(_______/  |/   \__/(_______)(_______)|/     \|
                 _______  _______  _______  _______              
                (  ____ \(  ___  )(       )(  ____ \             
                | (    \/| (   ) || () () || (    \/             
                | |      | (___) || || || || (__                 
                | | ____ |  ___  || |(_)| ||  __)                
                | | \_  )| (   ) || |   | || (                   
                | (___) || )   ( || )   ( || (____/\             
                (_______)|/     \||/     \|(_______/             
                                                                 
  """ + CEND )

def game_end():
    print(CBLUE + """\
                       _______                             
              |\     /(  ___  |\     /|                    
              ( \   / | (   ) | )   ( |                    
               \ (_) /| |   | | |   | |                    
                \   / | |   | | |   | |                    
                 ) (  | |   | | |   | |                    
                 | |  | (___) | (___) |                    
 _______ _______ _______________________ _______ ______  _ 
(  ____ (  ____ (  ____ (  ___  (  ____ (  ____ (  __  \( )
| (    \| (    \| (    \| (   ) | (    )| (    \| (  \  | |
| (__   | (_____| |     | (___) | (____)| (__   | |   ) | |
|  __)  (_____  | |     |  ___  |  _____|  __)  | |   | | |
| (           ) | |     | (   ) | (     | (     | |   ) (_)
| (____//\____) | (____/| )   ( | )     | (____/| (__/  )_ 
(_______\_______(_______|/     \|/      (_______(______/(_)
                                                          
    """ + CEND )
