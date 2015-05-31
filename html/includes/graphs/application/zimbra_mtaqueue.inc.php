<?php

/**
 * Observium
 *
 *   This file is part of Observium.
 *
 * @package    observium
 * @subpackage graphs
 * @copyright  (C) 2006-2014 Adam Armstrong
 *
 */

include_once($config['html_dir']."/includes/graphs/common.inc.php");

$colours      = "mixed";
$nototal      = (($width<224) ? 1 : 0);
$unit_text    = "MTA Queue";
$rrd_filename = get_rrd_path($device, "app-zimbra-mtaqueue.rrd");

$array = array(
                'kBytes' => array('descr' => 'Kilobytes'),
                'requests' => array('descr' => 'Requests'),
               );
$i = 0;

if (is_file($rrd_filename))
{
  foreach ($array as $ds => $data)
  {
    $rrd_list[$i]['filename'] = $rrd_filename;
    $rrd_list[$i]['descr']    = $data['descr'];
    $rrd_list[$i]['ds']       = $ds;
    $rrd_list[$i]['colour']   = $config['graph_colours'][$colours][$i];
    $i++;
  }
} else {
    echo("file missing: $file");
}

include("includes/graphs/generic_multi_line.inc.php");

// EOF
