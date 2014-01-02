
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Minimalistic integration of Mozillas \"Persona\" authentication system in Mojolicious apps",
  "AUTHOR" => "Heiko Jansen <hjansen\@cpan.org>, Moritz Lenz <moritz\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Mojolicious-Plugin-MozPersona",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Mojolicious::Plugin::MozPersona",
  "PREREQ_PM" => {
    "IO::Socket::SSL" => "1.75",
    "Mojolicious" => "2.00",
    "Mozilla::CA" => 20130114
  },
  "TEST_REQUIRES" => {},
  "VERSION" => "0.04",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "IO::Socket::SSL" => "1.75",
  "Mojolicious" => "2.00",
  "Mozilla::CA" => 20130114
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



