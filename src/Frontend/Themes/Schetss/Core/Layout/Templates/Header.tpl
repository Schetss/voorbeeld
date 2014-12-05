<header class="holder header-holder">

	<div class="main-header">

		
		<div  class="header">
			<div class="row">
				<div class="header-left">
					{* SEO logo: H1 for home, p for other pages *}
					<a title="{$siteTitle}" href="/"><img class="logo retina" src="/src/Frontend/Core/Layout/images/logo.png" alt="logo" /></a>
				</div>
				<div class="header-right">
					{* Languages *}
					{option:languages}
						<nav class="lan-nav">
							{include:Core/Layout/Templates/Languages.tpl}
						</nav>
					{/option:languages}
				</div>
			</div>
		</div>


		<div class="navigation">
			<div id="nav-row" >
				{* Navigation *}
				<nav class="main-nav">
					{$var|getnavigation:'page':0:1}
				</nav>
			</div>
		</div>
		<div class="clear"></div>

	</div>
</header>