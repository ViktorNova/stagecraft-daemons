# stagecraft-daemons
This is a collection of the various pro-audio/show performance-related system services for multimedia performances, used by Stagecraft OS. They can also be used by other Linux distributions with little modification

##What is this for?
Stagecraft OS uses [Runit](http://smarden.org/runit/) to create system services out of programs which are typically started manually, to ensure that they are always ready to run your show. Runit starts them on boot, and will automatically restart them should they somehow crash or encounter a serious error. 

  - JACK audio/MIDI system (jackd)
  - **Global audio/MIDI patchbay persistence (a modified aj-snapshot)**
  - **Global plugins, synthesizers, etc., which persist from song to song**
  - **JACK <-> ALSA MIDI conversion (a2jmidid)**
  - Stagecraft Show Manager (SSM web interface and nsmd)
  - ??

##Why Runit?
System services in Linux are typically handled using the init (boot) system, which varies from distro to distro (such as systemd, sysvinit, upstart, etc.), and are tied into the core of the OS. There are also other solutions for managing daemons like Supervisor, Forever, pm2, Monit, Circus, God, etc. 

Runit was chosen because of it's simplicity. It is very easy even for beginners to set up new daemons that run at boot, and because of is directory-based configuration and auto-discovery/activation of new services, it fits seamlessly into Stagecraft OS's modular app/package manager. This is different than all other process managers, which require modifying a central config file and/or manually restarting the process manager to pick up new configs.

Runit has been around for over 11 years, it is tried and true, and already exists in all linux distributions regardless of init system. Additionally, it is cross-platform and runs on OS X, BSDs, and more. It is tiny and has minimal dependencies. This will allow parts of Stagecraft OS to be easily ported to other distributions and operating systems, as well as making it trivial to interoperate with other computers in a show setup which are not running Stagecraft OS.
