
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.06

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Search/Elasticsearch/Async.pm',
    'lib/Search/Elasticsearch/Async/Bulk.pm',
    'lib/Search/Elasticsearch/Async/Scroll.pm',
    'lib/Search/Elasticsearch/Async/Util.pm',
    'lib/Search/Elasticsearch/Cxn/AEHTTP.pm',
    'lib/Search/Elasticsearch/Cxn/Mojo.pm',
    'lib/Search/Elasticsearch/CxnPool/Async/Sniff.pm',
    'lib/Search/Elasticsearch/CxnPool/Async/Static.pm',
    'lib/Search/Elasticsearch/CxnPool/Async/Static/NoPing.pm',
    'lib/Search/Elasticsearch/Role/Cxn/Async.pm',
    'lib/Search/Elasticsearch/Role/Is_Async.pm',
    'lib/Search/Elasticsearch/Transport/Async.pm'
);

notabs_ok($_) foreach @files;
done_testing;
