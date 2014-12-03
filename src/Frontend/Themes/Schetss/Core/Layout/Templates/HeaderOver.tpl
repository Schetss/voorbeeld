<header class="holder header-holder over-header">
	<div class="header-left"></div><div class="header-right"></div>
	<div class="row header-row">
		<div class="header">
				{* SEO logo: H1 for home, p for other pages *}

				<a title="{$siteTitle}" href="/"><img class="logo retina" src="/src/Frontend/Core/Layout/images/logo.png" alt="logo" /></a>
		
				{* Navigation *}
				<nav class="main-nav">
					{$var|getnavigation:'page':0:1}
				</nav>

				{* Meta *}
				<nav>
					{$var|getnavigation:'meta':0:1}
				</nav>

				{* Languages *}
				{option:languages}
					<nav>
						{include:Core/Layout/Templates/Languages.tpl}
					</nav>
				{/option:languages}

		</div>
	</div>
	<div class="row">
	{* Page title *}
	{option:!hideContentTitle}
		<header class="mainTitle">
			<h1>{$page.title}</h1>
		</header>
	{/option:!hideContentTitle}
</div>
</header>
