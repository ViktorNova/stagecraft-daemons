# stagecraft-daemons
This is a collection of the various pro system services for multimedia performances, used by Stagecraft OS. They can also be used by other Linux distributions with little modification

##What is this for?
Stagecraft OS uses [Monit](http://mmonit.com/monit/) to create system services out of programs which are typically started manually, to ensure that they are always ready to run your show. Monit starts them on boot, and will automatically restart them should they somehow crash or encounter a serious error. 

  - JACK audio/MIDI system (jackd)
  - **Global audio/MIDI patchbay persistence (a modified aj-snapshot)**
  - **Global plugins, synthesizers, etc., which persist from song to song**
  - **JACK <-> ALSA MIDI conversion (a2jmidid)**
  - Stagecraft Show Manager (SSM web interface and nsmd)
  - ??

##Why Monit?
There are other ways to manage system services in Linux using the init system, such as systemd, sysvinit, upstart, etc., which are tied into the core of the OS. There are also other solutions for managing daemons like Supervisor, Forever, pm2, and daemontools. 

Monit was chosen because it's the first thing I found that meets the criteria. That being said, if you have a suggestion of something that would be a better fit, I'm very open to suggestions as long it still meets the following requirements:

Monit already exists in all linux distributions regardless of boot system, it's cross-compatibility with OS X, it's tiny size and minimal dependencies, and ease of configuration. This will allow Stagecraft's methods to be easily ported to other distributions and operating systems, as well as making it trivial to interoperate with other computers in a show setup which are not running Stagecraft OS.
