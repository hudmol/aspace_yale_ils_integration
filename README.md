Yale ArchivesSpace ILS Integration
==================================

ArchivesSpace plugin to add support for integrating Yale's ILS.

## Installing it

To install, just activate the plugin in your config/config.rb file by
including an entry such as:

     # If you have other plugins loaded, just add 'aspace_yale_ils_integration' to
     # the list
     AppConfig[:plugins] = ['local', 'other_plugins', 'aspace_yale_ils_integration']

And then clone the `aspace_yale_ils_integration` repository into your
ArchivesSpace plugins directory.  For example:

     cd /path/to/your/archivesspace/plugins
     git clone https://github.com/hudmol/aspace_yale_ils_integration.git aspace_yale_ils_integration


## Upgrading from a previous release

Each release of this plugin comes with some database schema changes
that need to be applied.  To upgrade from a previous release:

  1. Replace your `/path/to/archivesspace/plugins/aspace_yale_ils_integration`
     directory with the new release version

  2. Run the database setup script to update all tables to the latest
     version:

          cd /path/to/archivesspace
          scripts/setup-database.sh
