
#!/usr/bin/perl
use warnings;
use strict;

my $runtime = 1;
my $lang = 0;
my $usrlang = 0;
my $path = 0;

if ($runtime eq 1) {
system ("clear");
print "\n";
        
print "                              .  \n";
print "                      o      _|_ \n";
print ".--. .  . .--. .-..--..  .,-. |  \n";
print "|  | |  | `--.(   |   |  |   )|  \n";
print "'  `-`--`-`--' `-'' -' `-|`-' `-'\n";
print "                         |       \n";
print "                         '      \n";

                print " S c r i p t\n        L a n g u a g e\n\n";
        print " 1) Perl\n";
        print " 2) Bash\n";
        print " 3) Python\n";
        print " 4) HTML\n\n";
        print "    Select an option [1-4] ";
        $usrlang = <STDIN>;
        chomp($usrlang);

        system("clear");
        print " \nP e r m i s s i o n s\n\n";
        print " 1) Remove All Permissions\n";
        print " 2) User Only Full Permissions\n";
        print " 3) User and Group Full Permissions\n";
        print " 4) User Group and Others Full Permissions\n";
        print " 5) User and Other Read and Execute Permissions\n\n";

        print "    Select an option [1-5] ";
        my $permchoice = <STDIN>;
        chomp($permchoice);
                
                system("clear");
                print "\n C u s t o m  -  P a t h \n\n";
                print " 1) Create Script in Current Directory (Default)\n";
                print " 2) Use Custom Path (Advanced)\n\n";

                print "    Select an option [1-2] ";
                my $pathbinary = <STDIN>;
                chomp($pathbinary);
                
                if ($pathbinary eq 2) {
                system ("clear");
                print"\n Enter a custom path relative to working directory... \n";
                print"\n File will be placed with the following command: \n";
                print" mv [file] [USER PATH]\n\n";
                print" Please note, directory must already exist.\n\n";
                print" Current working directory:\n";
                system("ls -lhgh");
                print"\n Selected Path: ";
                $path = <STDIN>;
                chomp ($path);
                }              

        system("clear");
        print "\n Enter your filename without an extension or spaces...\n";
        my $usrname = <STDIN>;
        chomp ($usrname);
        if ($usrlang eq 1){
                $lang = ".pl";
        }
        if ($usrlang eq 2) {
                $lang = ".sh";
        }
        if ($usrlang eq 3) {
                $lang = ".py";
        }
        if ($usrlang eq 4) {
                $lang = ".html";
        }
        system ("touch $usrname$lang");
        if ($usrlang eq 1){
        system ("echo '#!/usr/bin/perl' >> $usrname$lang");
        system ("echo 'use warnings;' >> $usrname$lang");
        system ("echo 'use strict;' >> $usrname$lang");
        system ("echo 'use feature \"say\";' >> $usrname$lang");
        }
        if ($usrlang eq 2) {
        system ("echo '#!/bin/bash' >> $usrname$lang");
        }
        if ($usrlang eq 3) {
        system ("echo '#!/usr/bin/env python' >> $usrname$lang");
        }
                if ($usrlang eq 4) {
        system ("echo '<!DOCTYPE html>' >> $usrname$lang");
        system ("echo '<html>' >> $usrname$lang");
        system ("echo '' >> $usrname$lang");
        system ("echo '<head>' >> $usrname$lang");
        system ("echo '<title>Page Title</title>' >> $usrname$lang");
        system ("echo '</head>' >> $usrname$lang");
        system ("echo '' >> $usrname$lang");
        system ("echo '<body>' >> $usrname$lang");
        system ("echo '</body>' >> $usrname$lang");
        system ("echo '' >> $usrname$lang");
        system ("echo '</html>' >> $usrname$lang");
        }

        if ($permchoice eq 1) {
        system("chmod g-wrx $usrname$lang");
        system("chmod u-wrx $usrname$lang");
        system("chmod o-wrx $usrname$lang");
        }
        if ($permchoice eq 2) {
        system("chmod g-wrx $usrname$lang");
        system("chmod o-wrx $usrname$lang");
        system("chmod u+wrx $usrname$lang");
        }
        if ($permchoice eq 3 ) {
        system("chmod gu+wrx $usrname$lang");
        system("chmod o-wrx $usrname$lang");
        }
        if ($permchoice eq 4) {
        system("chmod guo+wrx $usrname$lang");
        }
        if ($permchoice eq 5) {
        system("chmod g-wrx $usrname$lang");
        system("chmod uo+rx $usrname$lang");
        }

                if ($pathbinary eq 2) {     
                system ("mv $usrname$lang $path");
                }

my $runtime = 0 ;
}

