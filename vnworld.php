<?php

define('CURSCRIPT', 'vnworld');

require './include/common.inc.php';
require './include/game/itemplace.func.php';
require config('vnworld',$gamecfg);

/*** 登陆检测 ***/
if(!$cuser||!$cpass) { gexit($_ERROR['no_login'],__file__,__line__); }

$result = $db->query("SELECT * FROM {$tablepre}users WHERE username='$cuser'");
if(!$db->num_rows($result)) { gexit($_ERROR['login_check'],__file__,__line__); }
$udata = $db->fetch_array($result);
if($udata['password'] != $cpass) { gexit($_ERROR['wrong_pw'], __file__, __line__); }
if($udata['groupid'] <= 0) { gexit($_ERROR['user_ban'], __file__, __line__); }
/*** 登陆检测结束 ***/

/*** 页面判定部分 ***/

$vtips = isset($_GET['vtips']) ? $check_infos[$_GET['vtips']] : '';
if(!isset($vnmode)){$vnmode = 'none';}
global $gamefounder;

if($vnmode=='none')
{
	//读取提交过的历史记录。
	$cache_file = config('queue_vnmixitem',$gamecfg);
	if(file_exists($cache_file))
	{
		$temp_vniteminfo = $vn_iteminfo + $vn_gm_iteminfo;
		require($cache_file);
		if(isset($carr))
		{
			$temp_carr = $carr;
			foreach($temp_carr as $cid => $cinfo)
			{
				// 格式化素材来源
				foreach($cinfo['stuff'] as $sid => $snm)
				{
					include_once config('npc',$gamecfg);
					include_once config('addnpc',$gamecfg);
					include_once config('evonpc',$gamecfg);
					$tooltipinfo = get_item_place($snm);
					if(!empty($tooltipinfo))
					{
						$temp_carr[$cid]['stuff'][$sid] = "<span tooltip=\"".$tooltipinfo."\">".$snm."</span>";
					}
					$tooltipinfo = '';
				}
				// 格式化名称
				$cinfo['result'][0] = parse_info_desc($cinfo['result'][0],'m');
				// 格式化类别
				$cinfo['result'][1] = parse_info_desc($cinfo['result'][1],'k');
				// 格式化属性
				if(isset($cinfo['result'][4]) && is_array($cinfo['result'][4]))
				{
					$temp_carr[$cid]['spkinfo'] = parse_info_desc($cinfo['result'][4],'sk',$cinfo['result'][1]);
					/*foreach($cinfo['result'][4] as $sk)
					{
						if(!empty($temp_carr[$cid]['spkinfo'])) $temp_carr[$cid]['spkinfo'] .= '+'.parse_itm_desc($sk,'sk');
						else $temp_carr[$cid]['spkinfo'] = parse_info_desc($sk,'sk');
					}*/
				}
				// 汇总合成结果至一段内
				$temp_carr[$cid]['result'][0] = $cinfo['result'][0].'/'.$cinfo['result'][1].'/'.$cinfo['result'][2].'/'.$cinfo['result'][3];
				if(isset($temp_carr[$cid]['spkinfo'])) $temp_carr[$cid]['result'][0].='/'.$temp_carr[$cid]['spkinfo'];
			}
		}
	}
	include template('vnworld');
}

?>
