
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.08

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
    'lib/Search/Elasticsearch/Transport/Async.pm',
    't/10_Basic_Async/10_load.t',
    't/20_Serializer_Async/10_load_cpanel.t',
    't/20_Serializer_Async/11_load_xs.t',
    't/20_Serializer_Async/12_load_pp.t',
    't/20_Serializer_Async/13_preload_cpanel.t',
    't/20_Serializer_Async/14_preload_xs.t',
    't/20_Serializer_Async/20_xs_encode_decode.t',
    't/20_Serializer_Async/21_xs_encode_bulk.t',
    't/20_Serializer_Async/22_xs_encode_pretty.t',
    't/20_Serializer_Async/30_cpanel_encode_decode.t',
    't/20_Serializer_Async/31_cpanel_encode_bulk.t',
    't/20_Serializer_Async/32_cpanel_encode_pretty.t',
    't/20_Serializer_Async/40_pp_encode_decode.t',
    't/20_Serializer_Async/41_pp_encode_bulk.t',
    't/20_Serializer_Async/42_pp_encode_pretty.t',
    't/20_Serializer_Async/encode_bulk.pl',
    't/20_Serializer_Async/encode_decode.pl',
    't/20_Serializer_Async/encode_pretty.pl',
    't/30_Logger_Async/10_explicit.t',
    't/30_Logger_Async/20_implicit.t',
    't/30_Logger_Async/30_log_methods.t',
    't/30_Logger_Async/40_trace_request.t',
    't/30_Logger_Async/50_trace_response.t',
    't/30_Logger_Async/60_trace_error.t',
    't/30_Logger_Async/70_trace_comment.t',
    't/40_Transport_Async/10_tidy_request.t',
    't/40_Transport_Async/20_send_body_as.t',
    't/40_Transport_Async/30_perform_request.t',
    't/50_Cxn_Pool_Async/10_static_normal.t',
    't/50_Cxn_Pool_Async/11_static_node_missing.t',
    't/50_Cxn_Pool_Async/12_static_node_fails.t',
    't/50_Cxn_Pool_Async/13_static_node_timesout.t',
    't/50_Cxn_Pool_Async/14_static_both_nodes_timeout.t',
    't/50_Cxn_Pool_Async/15_static_both_nodes_fail.t',
    't/50_Cxn_Pool_Async/16_static_nodes_starting.t',
    't/50_Cxn_Pool_Async/17_static_runaway_nodes.t',
    't/50_Cxn_Pool_Async/30_sniff_normal.t',
    't/50_Cxn_Pool_Async/31_sniff_new_nodes.t',
    't/50_Cxn_Pool_Async/32_sniff_node_fails.t',
    't/50_Cxn_Pool_Async/33_sniff_both_nodes_fail.t',
    't/50_Cxn_Pool_Async/34_sniff_node_timeout.t',
    't/50_Cxn_Pool_Async/35_sniff_both_nodes_timeout.t',
    't/50_Cxn_Pool_Async/36_sniff_nodes_starting.t',
    't/50_Cxn_Pool_Async/37_sniff_runaway_nodes.t',
    't/50_Cxn_Pool_Async/38_bad_sniff.t',
    't/50_Cxn_Pool_Async/39_sniff_max_content.t',
    't/50_Cxn_Pool_Async/50_noping_normal.t',
    't/50_Cxn_Pool_Async/51_noping_node_fails.t',
    't/50_Cxn_Pool_Async/52_noping_node_timesout.t',
    't/50_Cxn_Pool_Async/53_noping_all_nodes_fail.t',
    't/50_Cxn_Pool_Async/54_noping_nodes_starting.t',
    't/50_Cxn_Pool_Async/55_noping_runaway_nodes.t',
    't/50_Cxn_Pool_Async/56_max_retries.t',
    't/50_Cxn_Pool_Async/70_live.t',
    't/60_Cxn_Async/10_basic.t',
    't/60_Cxn_Async/20_process_response.t',
    't/60_Cxn_Async/30_http.t',
    't/60_Cxn_Async/40_fork_aehttp.t',
    't/60_Cxn_Async/41_fork_mojo.t',
    't/70_Helper_Async/10_bulk_add_action.t',
    't/70_Helper_Async/20_bulk_helpers.t',
    't/70_Helper_Async/30_bulk_flush.t',
    't/70_Helper_Async/40_bulk_errors.t',
    't/70_Helper_Async/50_scroll.t',
    't/70_Helper_Async/60_reindex.t',
    't/90_Client_Spec_Async/00_print_version.t',
    't/lib/LogCallback.pl',
    't/lib/MockAsyncCxn.pm',
    't/lib/MockAsyncTransport.pm',
    't/lib/default_async_cxn.pl',
    't/lib/default_cxn.pl',
    't/lib/es_async.pl',
    't/lib/es_async_fork.pl',
    't/lib/es_sync.pl',
    't/lib/index_test_data.pl',
    't/release-eol.t',
    't/release-no-tabs.t',
    't/release-pod-syntax.t'
);

notabs_ok($_) foreach @files;
done_testing;
