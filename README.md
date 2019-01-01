FTB Direwolf20 v1.12 Server Container
=====

Since the minecraft server puts all of its persistent files into its own directory
and thus persistent data can't be separated from server code, we need to backup
the whole server.

To achieve that and still be able to rebuild the server and overwrite versions,
we first install the minecraft server to `/usr/app/temp-server` in the `Dockerfile`
and `setup.sh`.

Then on start of the container (and after mounting of the volume) in `run.sh` we
copy the new `temp-server` to `/usr/app/server`, so that only new files are overwritten
and config files are left untouched.

Then we start the server which will notice the config files.

Mods
====

Modpack
----

The Modpack Version is `2.4.0`. This is higher than the recommended version, since
the newest Minecraft Forge is needed for my additions.

Mods
----

To connect to the server, you need to install the following mods manually:

- Buildcraft 7.99.19
- Railcraft 12.0.0-beta-2
