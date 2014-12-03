{include:Core/Layout/Templates/Head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<section id="sitetop">
		{* Header *}
		{include:Core/Layout/Templates/Header.tpl}
	</section

	<main id="main" class="holder main-holder" role="main">
		<div class="main">
			<div class="row">

				<div class="content-left">
					{* Left position *}
					{option:positionLeft}
						{iteration:positionLeft}
						{option:!positionLeft.blockIsHTML}
							{$positionLeft.blockContent}
						{/option:!positionLeft.blockIsHTML}
						{option:positionLeft.blockIsHTML}
							{$positionLeft.blockContent}
						{/option:positionLeft.blockIsHTML}
						{/iteration:positionLeft}
					{/option:positionLeft}
				</div>


				<div class="content">
					{* Main position *}
					{option:positionMain}
						{iteration:positionMain}
						{option:!positionMain.blockIsHTML}
							{$positionMain.blockContent}
						{/option:!positionMain.blockIsHTML}
						{option:positionMain.blockIsHTML}
							{$positionMain.blockContent}
						{/option:positionMain.blockIsHTML}
						{/iteration:positionMain}
					{/option:positionMain}
				</div>
			</div>

				{* Main2 position *}
				{option:positionMain2}
					{iteration:positionMain2}
					{option:!positionMain2.blockIsHTML}
						{$positionMain2.blockContent}
					{/option:!positionMain2.blockIsHTML}
					{option:positionMain2.blockIsHTML}
						{$positionMain2.blockContent}
					{/option:positionMain2.blockIsHTML}
					{/iteration:positionMain2}
				{/option:positionMain2}
		
		</div>
	</main>

	{* Footer *}
	{include:Core/Layout/Templates/Footer.tpl}

</body>
</html>