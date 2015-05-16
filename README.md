# stagecraft-daemons
This is a collection of the various pro-audio/show performance-related system services for multimedia performances, used by Stagecraft OS. They can also be used by other Linux distributions with little modification

##What is this for?
Stagecraft OS uses [Daemonize](http://software.clapper.org/daemonize/daemonize.html) to create system services out of programs which are typically started manually, to ensure that they are always ready to run your show. They are started on boot, and will automatically restart them if they somehow crash or encounter a serious error. 

  - JACK audio/MIDI system (jackd)
  - **Global audio/MIDI patchbay persistence (a modified aj-snapshot)**
  - **Global plugins, synthesizers, etc., which persist from song to song**
  - **JACK <-> ALSA MIDI conversion (a2jmidid)**
  - Stagecraft Show Manager (SSM web interface and nsmd)
  - ??

##How to use it




On Stagecraft OS, this is installed by default.



###Why Daemonize?
System services in Linux are typically handled using the init (boot) system, which varies from distro to distro (such as systemd, sysvinit, upstart, etc.), and are tied into the core of the OS. There are also other solutions for managing daemons like Supervisor, Forever, pm2, Monit, Circus, God, etc. 

Daemonize was chosen because of it's extreme simplicity.

It is very easy even for beginners to set up new daemons that run at boot. Additionally, it is cross-platform and runs on OS X, BSDs, and more. It is tiny and has minimal dependencies. This will allow parts of Stagecraft OS to be easily ported to other distributions and operating systems, as well as making it trivial to interoperate with other computers in a show setup which are not running Stagecraft OS.

Note: Runit was originally used instead of Daemonize,but was ditched because of it's non-intuitive/confusing configuration. Since Stagecraft OS's primary goal is to be user friendly for non-geeks, Daemonize was the clear choice
