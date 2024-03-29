
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Test::More" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "runs php under FCGI",
  "dist_author" => [
    "Mike Doherty <doherty\@cpan.org>"
  ],
  "dist_name" => "php-fcgi",
  "dist_version" => "0.001",
  "license" => "perl",
  "module_name" => "php::fcgi",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Daemon::Control" => 0,
    "File::Spec" => "v0.0.7",
    "perl" => "5.006",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => [
    "bin/php-fcgi"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
