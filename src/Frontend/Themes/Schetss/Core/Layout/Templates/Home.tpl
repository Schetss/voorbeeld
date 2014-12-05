{include:Core/Layout/Templates/Head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<section id="sitetop">
		{* Header *}
		{include:Core/Layout/Templates/Header.tpl}
	</section

	<main id="main" class="holder main-holder" role="main">
		<div class="main">
			<div class="main-head">
				<div class="main-head-overlay"></div>
				<div class="main-head-image">
					{* Image position *}
					{option:positionImage}
						{iteration:positionImage}
						{option:!positionImage.blockIsHTML}
							{$positionImage.blockContent}
						{/option:!positionImage.blockIsHTML}
						{option:positionImage.blockIsHTML}
							{$positionImage.blockContent}
						{/option:positionImage.blockIsHTML}
						{/iteration:positionImage}
					{/option:positionImage}
				</div>
				<div class="main-head-quote">
					<div class="row">
						{* Quote position *}
						{option:positionQuote}
							{iteration:positionQuote}
							{option:!positionQuote.blockIsHTML}
								{$positionQuote.blockContent}
							{/option:!positionQuote.blockIsHTML}
							{option:positionQuote.blockIsHTML}
								{$positionQuote.blockContent}
							{/option:positionQuote.blockIsHTML}
							{/iteration:positionQuote}
						{/option:positionQuote}
					</div>
				</div>
			</div>
			<div class="block1 row">
				{* Block1 position *}
				{option:positionBlock1}
					{iteration:positionBlock1}
					{option:!positionBlock1.blockIsHTML}
						{$positionBlock1.blockContent}
					{/option:!positionBlock1.blockIsHTML}
					{option:positionBlock1.blockIsHTML}
						{$positionBlock1.blockContent}
					{/option:positionBlock1.blockIsHTML}
					{/iteration:positionBlock1}
				{/option:positionBlock1}
			</div>

			
			<div class="clear"></div>

			<div class="greyBlock">
				<div class="row">
					{* GreyBlock position *}
					{option:positionGreyBlock}
						{iteration:positionGreyBlock}
						{option:!positionGreyBlock.blockIsHTML}
							{$positionGreyBlock.blockContent}
						{/option:!positionGreyBlock.blockIsHTML}
						{option:positionGreyBlock.blockIsHTML}
							{$positionGreyBlock.blockContent}
						{/option:positionGreyBlock.blockIsHTML}
						{/iteration:positionGreyBlock}
					{/option:positionGreyBlock}
				</div>
			</div>
			
		<div class="block2">
				<div class="block2Image">
					{* Block2Image position *}
					{option:positionBlock2Image}
						{iteration:positionBlock2Image}
						{option:!positionBlock2Image.blockIsHTML}
							{$positionBlock2Image.blockContent}
						{/option:!positionBlock2Image.blockIsHTML}
						{option:positionBlock2Image.blockIsHTML}
							{$positionBlock2Image.blockContent}
						{/option:positionBlock2Image.blockIsHTML}
						{/iteration:positionBlock2Image}
					{/option:positionBlock2Image}
				</div>
				<div class="row">
					<div class="block2Text">
						{* Block2Text position *}
						{option:positionBlock2Text}
							{iteration:positionBlock2Text}
							{option:!positionBlock2Text.blockIsHTML}
								{$positionBlock2Text.blockContent}
							{/option:!positionBlock2Text.blockIsHTML}
							{option:positionBlock2Text.blockIsHTML}
								{$positionBlock2Text.blockContent}
							{/option:positionBlock2Text.blockIsHTML}
							{/iteration:positionBlock2Text}
						{/option:positionBlock2Text}
					</div>
				</div>
			</div>
		
		</div>
	</main>


	{* Footer *}
	{include:Core/Layout/Templates/Footer.tpl}

</body>
</html>