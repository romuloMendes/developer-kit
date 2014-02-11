<ul class="nav nav-pills">
	<li {if $sMenuSubItemSelect=='good'}class="active"{/if}><a href="{cfg name='path.root.web'}/">{$aLang.blog_menu_all_good}</a></li>
	
	<li {if $sMenuSubItemSelect=='new'}class="active"{/if}>
		{if $iCountTopicsNew>0}
			<a href="{router page='index'}new/" title="{$aLang.blog_menu_top_period_24h}">{$aLang.blog_menu_all_new} +{$iCountTopicsNew}</a>
		{else}
			<a href="{router page='index'}newall/" title="{$aLang.blog_menu_top_period_all}">{$aLang.blog_menu_all_new}</a>
		{/if}
	</li>
	
	<li class="dropdown{if $sMenuSubItemSelect=='discussed'} active{/if}">
		<a href="{router page='index'}discussed/" class="dropdown-toggle" data-toggle="dropdown">
			{$aLang.blog_menu_all_discussed}
			<b class="caret"></b>
		</a>
		<ul class="dropdown-menu">
			<li {if $sPeriodSelectCurrent=='1'}class="active"{/if}><a href="{router page='index'}discussed/?period=1">{$aLang.blog_menu_top_period_24h}</a></li>
			<li {if $sPeriodSelectCurrent=='7'}class="active"{/if}><a href="{router page='index'}discussed/?period=7">{$aLang.blog_menu_top_period_7d}</a></li>
			<li {if $sPeriodSelectCurrent=='30'}class="active"{/if}><a href="{router page='index'}discussed/?period=30">{$aLang.blog_menu_top_period_30d}</a></li>
			<li {if $sPeriodSelectCurrent=='all'}class="active"{/if}><a href="{router page='index'}discussed/?period=all">{$aLang.blog_menu_top_period_all}</a></li>
		</ul>
	</li>
	
	<li class="dropdown{if $sMenuSubItemSelect=='top'} active{/if}">
		<a href="{router page='index'}top/" class="dropdown-toggle" data-toggle="dropdown">
			{$aLang.blog_menu_all_top}
			<b class="caret"></b>
		</a>
		<ul class="dropdown-menu">
			<li {if $sPeriodSelectCurrent=='1'}class="active"{/if}><a href="{router page='index'}top/?period=1">{$aLang.blog_menu_top_period_24h}</a></li>
			<li {if $sPeriodSelectCurrent=='7'}class="active"{/if}><a href="{router page='index'}top/?period=7">{$aLang.blog_menu_top_period_7d}</a></li>
			<li {if $sPeriodSelectCurrent=='30'}class="active"{/if}><a href="{router page='index'}top/?period=30">{$aLang.blog_menu_top_period_30d}</a></li>
			<li {if $sPeriodSelectCurrent=='all'}class="active"{/if}><a href="{router page='index'}top/?period=all">{$aLang.blog_menu_top_period_all}</a></li>
		</ul>
	</li>
	
	{if $oUserCurrent}
		<li {if $sMenuItemSelect=='feed'}class="active"{/if}>
			<a href="{router page='feed'}">{$aLang.userfeed_title}</a>
		</li>
	{/if}
	{hook run='menu_blog_index_item'}
</ul>

{hook run='menu_blog'}
