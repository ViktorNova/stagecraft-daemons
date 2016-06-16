# stagecraft-daemons
This is a collection of the various pro-audio/show performance-related system services for multimedia performances, used by Stagecraft OS. They can also be used by other Linux distributions with little modification

##What is this for?
Stagecraft OS creates system services out of programs which are typically started manually, to ensure that they are always ready to run your show. They are started on boot, and will automatically restart them if they somehow crash or encounter a serious error. 

  - JACK audio/MIDI system (jackd)
  - **Global audio/MIDI patchbay persistence (a modified aj-snapshot)**
  - **Global plugins, synthesizers, etc., which persist from song to song**
  - **JACK <-> ALSA MIDI conversion (a2jmidid)**
  - Stagecraft Show Manager (SSM web interface and nsmd)
  - ??

##How to use it
Put an executable script in ~/SYSTEM/GLOBAL/DAEMONS/. 
On Stagecraft OS, this is installed by default.

It will be started the next time you log in, and will be re-started automatically if it crashes or gets closed

To start it manually,
````global-apps````

To un-daemonize everything
````killall diy-daemon.sh````

From there you can manually close/kill your global apps and they will not respawn.




###Why this hacked together bash solution?
While true that there are also other solutions for managing daemons like Supervisor, Forever, PM2, Guvnor, Monit, Circus, God, etc., this script was chosen because of it's extreme simplicity. It is very easy even for beginners to set up new daemons that run at boot. Additionally, it is cross-platform and runs on OS X, BSDs, and more. It is tiny and has minimal dependencies. This will allow parts of Stagecraft OS to be easily ported to other distributions and operating systems, as well as making it trivial to interoperate with other computers in a show setup which are not running Stagecraft OS.

It will probably be replaced soon with either Guvnor or PM2, which are both Node.js based process managers with web interfaces.


