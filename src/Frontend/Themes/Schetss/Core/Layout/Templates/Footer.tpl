<section id="contact">
<div class="pre-footer">
	<div class="row">
		<h3>Contact</h3></a>
	</div>
</div>
<footer class="holder footer-holder">
	<div class="row">
		<div class="footer">
			<div class="contact-info">
				<ul class="sm"> 
					<li><a href="https://www.facebook.com/schetss" target="_blank"><img src="/src/Frontend/Core/Layout/images/facebook.png" alt="facebook" class="retina"></a></li>
					<li><a href="https://twitter.com/schetss" target="_blank"><img src="/src/Frontend/Core/Layout/images/twitter.png" alt="twitter" class="retina"></a></li>
					<li><a href="https://www.linkedin.com/company/schetss" target="_blank"><img src="/src/Frontend/Core/Layout/images/linkedin.png" alt="linkedin" class="retina"></a></li>
				</ul>
				
				{* Contact Information *}
				{option:positionBottomLeft}
					{iteration:positionBottomLeft}
					{option:!positionBottomLeft.blockIsHTML}
						{$positionBottomLeft.blockContent}
					{/option:!positionBottomLeft.blockIsHTML}
					{option:positionBottomLeft.blockIsHTML}
						{$positionBottomLeft.blockContent}
					{/option:positionBottomLeft.blockIsHTML}
					{/iteration:positionBottomLeft}
				{/option:positionBottomLeft}

				<p class="copyright">
					&copy; {$now|date:'Y'} {$siteTitle}
				</p>
			</div>

			<div class="contact-form">	
				<!-- <h5>Stuur een bericht.</h5>			 -->
				{* Formbuilder *}
				{option:positionBottomRight}
					{iteration:positionBottomRight}
					{option:!positionBottomRight.blockIsHTML}
						{$positionBottomRight.blockContent}
					{/option:!positionBottomRight.blockIsHTML}
					{option:positionBottomRight.blockIsHTML}
						{$positionBottomRight.blockContent}
					{/option:positionBottomRight.blockIsHTML}
					{/iteration:positionBottomRight}
				{/option:positionBottomRight}

			</div>
		</div>
	</div>
	<hr class="endline" />
	<div class="back-to-top">
		{* Back to top *}
		{option:positionBackToTop}
			{iteration:positionBackToTop}
			{option:!positionBackToTop.blockIsHTML}
				{$positionBackToTop.blockContent}
			{/option:!positionBackToTop.blockIsHTML}
			{option:positionBackToTop.blockIsHTML}
				{$positionBackToTop.blockContent}
			{/option:positionBackToTop.blockIsHTML}
			{/iteration:positionBackToTop}
		{/option:positionBackToTop}
	</div>

</footer>
</section>

<noscript>
	<div class="holder">
		<div class="row">
			<div class="alert-box notice">
				<h4>{$lblEnableJavascript|ucfirst}</h4>
				<p>{$msgEnableJavascript}</p>
			</div>
		</div>
	</div>
</noscript>

{* General Javascript *}
{iteration:jsFiles}
	<script src="{$jsFiles.file}"></script>
{/iteration:jsFiles}

{* Theme specific Javascript *}
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="{$THEME_URL}/Core/Js/theme.js"></script>

{* Site wide HTML *}
{$siteHTMLFooter}
