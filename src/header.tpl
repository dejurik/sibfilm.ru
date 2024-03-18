<!doctype html>
<html ⚡>
	<head>
		<meta charset="utf-8">
		<title>{if $content.meta_title}{$content.meta_title}{else}{$config.meta_title}{/if}</title>
		
		<script async src="https://cdn.ampproject.org/v0.js"></script>
		
		<script async custom-element="amp-sidebar" src="https://cdn.ampproject.org/v0/amp-sidebar-0.1.js"></script>
		<script async custom-element="amp-accordion" src="https://cdn.ampproject.org/v0/amp-accordion-0.1.js"></script>
		<script async custom-element="amp-carousel" src="https://cdn.ampproject.org/v0/amp-carousel-0.1.js"></script>
		<script async custom-element="amp-analytics" src="https://cdn.ampproject.org/v0/amp-analytics-0.1.js"></script>
		<script async custom-element="amp-iframe" src="https://cdn.ampproject.org/v0/amp-iframe-0.1.js"></script>
		<script async custom-element="amp-ad" src="https://cdn.ampproject.org/v0/amp-ad-0.1.js"></script>
		<script async custom-element="amp-user-notification" src="https://cdn.ampproject.org/v0/amp-user-notification-0.1.js"></script>
		
		{*
		<meta name="description" content="{if $content.meta_description}{$content.meta_description}{else}{$config.meta_description}{/if}">
		<script async custom-element="amp-font" src="https://cdn.ampproject.org/v0/amp-font-0.1.js"></script>
		
		<script async custom-element="amp-image-lightbox" src="https://cdn.ampproject.org/v0/amp-image-lightbox-0.1.js"></script>
		<script async custom-element="amp-social-share" src="https://cdn.ampproject.org/v0/amp-social-share-0.1.js"></script>
		<script async custom-element="amp-form" src="https://cdn.ampproject.org/v0/amp-form-0.1.js"></script>
		*}
		
		<link rel="canonical" href="{$config.site_url}{if $content.url}/content/view/{$content.url}{else}/{/if}" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i">
		
		<meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1,maximum-scale=1,user-scalable=yes">
		<meta name="apple-mobile-web-app-capable" content="yes"/>
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		
		
		
		{if $content.id_item}
			<script type="application/ld+json">
				{
					"@context": "https://schema.org",
					"@type": "NewsArticle",
					"mainEntityOfPage": {
						"@type": "WebPage",
						"@id": "{$config.site_url}{$config.site_url}{if $content.url}/content/view/{$content.url}{else}/{/if}"
					},
					"headline": "{if $content.meta_title}{$content.meta_title}{else}{$config.meta_title}{/if}",
					"description": "{if $content.meta_description}{$content.meta_description}{else}{$config.meta_description}{/if}",
					{if $content.images}{foreach from=$content.images key=key item=itemimg}{if $itemimg@first}
					"image": "https://reporter64.ru/uploads/content/{$itemimg.filename}",
					{/if}{/foreach}{/if}
					"publisher": {
						"@type": "Organization",
						"name": "Репортер 64",
						"logo": {
						  "@type": "ImageObject",
						  "url": "https://reporter64.ru/templates/amp/i/logo.jpg"
						}
					},
					"author": {
						"@type": "Organization",
						"name": "Репортер 64",
						"url": "{$config.site_url}"
					},
					"datePublished": "{$content.created|date_format:"%Y-%m-%d"}",
					"dateModified": "{$content.created|date_format:"%Y-%m-%d"}"
				}
			</script>		
		{else}
			<script type="application/ld+json">
				{
					"@context": "http://schema.org",
					"@type": "Webpage",
					"url": "{$config.site_url}",
					"name": "Репортер 64",
					"headline": "{$config.meta_title}",
					"description": "{$config.meta_description}",
					"mainEntityOfPage": {
						"@type": "WebPage",
						"@id": "{$config.site_url}"
					},
					"author": {
						"@type": "Organization",
						"name": "Репортер 64",
						"url": "{$config.site_url}"
					},
					"publisher": {
						"@type": "Organization",
						"name": "Репортер 64",
						"logo": {
						  "@type": "ImageObject",
						  "url": "https://reporter64.ru/templates/amp/i/logo.jpg"
						}
					},
					"image": {
						"@type": "ImageObject",
						"url": "https://reporter64.ru/uploads/content/ala_1654430162629c99d2a2b9a.jpg",
						"width": 1280,
						"height": 720
					}
				}
			</script>
		{/if}
		
		
		
		{literal}
		<style amp-custom="">
			body{font-family:'Roboto', sans-serif; font-size:14px; background-color:#FFFFFF;}
			
			
			/*Font Settings*/
			h1{ font-size:24px; line-height:34px; font-weight:500;}
			h2{ font-size:22px; line-height:32px; font-weight:500;}
			h3{ font-size:20px; line-height:30px; font-weight:500;}
			h4{ font-size:18px; line-height:28px; font-weight:500;}
			h5{ font-size:16px; line-height:26px; font-weight:500;}
			h6{ font-size:14px; line-height:22px; font-weight:800;}
			.ultrathin{font-weight:200;}
			.thin{font-weight:300;}
			.thiner{font-weight:400;}
			.boder{font-weight:600;}
			.bold{font-weight:700;}
			.ultrabold{font-weight:800;}
			.capitalize{text-transform: capitalize;}
			.italic{font-style: italic;}
			.small-text{font-size:12px; display:block;}
			.center-text{text-align:center; display:block;}
			.right-text{text-align:right;}
			.uppercase{text-transform: uppercase;}
			.boxed-text{width:80%; margin:0px auto 30px auto;}
			.round-image{border-radius:500px;}
			p a{display:inline;}

			/*Content Settings*/
			.content{padding:0px 20px 0px 20px}
			.container{margin-bottom:30px}
			.full-bottom{margin-bottom:25px}
			.no-bottom{margin-bottom:0px}
			.full-top{margin-top:25px}
			.half-bottom{margin-bottom:15px}
			.half-top{margin-top:15px}
			.quarter-bottom{margin-bottom:15px}
			.hidden{display:none}
			.left-column{width:45%; margin-right:5%; float:left}
			.right-column{width:45%; margin-left:5%; float:left}
			.one-third-left{float:left; width:29%;  margin-right:1%}
			.one-third-center{float:left; width:29%; margin-left:5%; margin-right:5%}
			.one-third-right{float:left; width:29%; margin-left:1%}
			.clear{clear:both}
			.pt-45 {padding-top: 45px;}
			.pt-25 {padding-top: 25px;}
			.pb-20 {padding-bottom: 20px;}
			
			.bg-magenta-ultra{background-color: #b395a3; color:#FFFFFF}
			.bg-magenta-light{background-color: #b32d6c; color:#FFFFFF}
			.bg-magenta-dark{background-color: #7e234e; color:#FFFFFF}
			.color-magenta-light{color:#b32d6c}


			* {
				margin: 0;
				padding: 0;
				border: 0;
				font-size: 100%;
				vertical-align: baseline;
				outline: none;
				font-size-adjust: none;
				-webkit-text-size-adjust: none;
				-moz-text-size-adjust: none;
				-ms-text-size-adjust: none;
				-webkit-tap-highlight-color: rgba(0,0,0,0);
				-webkit-font-smoothing: antialiased;
				-webkit-transform: translate3d(1,1,1);
				transform:translate3d(1,1,1);    
				text-rendering: auto;
				-webkit-font-smoothing: antialiased;
				-moz-osx-font-smoothing: grayscale;
			}

			div, a, p, img, blockquote, form, fieldset, textarea, input, label, iframe, code, pre {
				display: block;
				position:relative;
			}

			p {
				line-height:30px; 
				font-weight:400; 
				color:#666666; 
				font-size:14px; 
				margin-bottom:15px;
			}

			a{text-decoration:none; color:#3498db;} 	
			
			/*Buttons*/
.button{
	display:inline-block;
	padding:13px 20px;
	margin:0px 0px 25px 0px;
	font-size:12px;
}

.button-round{border-radius:30px;}
.button-full{display: block; text-align: center;}
.button-center{width:100px; margin-left:auto; margin-right:auto; display:block; text-align:center;}
.button:hover{opacity:0.9;}
			
			
			/*Header*/
			header{
				position:fixed;
				height:43px;
				background-color:#FFFFFF;
				width:100%;
				z-index:99999;
				border-bottom:solid 1px rgba(0,0,0,0.1);
			}

			.header-icon-1, .header-icon-2{
				position:absolute;
				color:#1f1f1f;
				line-height:43px; 
				text-align:center; 
				width:50px;
				display:block;
				font-size:14px;
				background-color:transparent;
			}

			.header-icon-1{
				right:0px; 
				top:0px;
				border-left:dashed 1px rgba(0,0,0,0.05);
			}

			.header-icon-2{
				right:50px;
				top:0px;
				border-left:dashed 1px rgba(0,0,0,0.05);
			}

			.header-logo{
				background-image:url(/templates/amp/i/logo.jpg);
				background-size:250px 43px;
				width:250px;
				height:43px;
				display:block;
			}

			.header-clear{
				height:43px;
			}
			
			
			/*header menu*/
			::-webkit-scrollbar { width: 0; }
			#sidebar{
				width:240px;
				background-color:#FFFFFF;
				padding-top:0px;
			}
			

			.sidebar-header a{
				width:50px;
				float:left;
				padding-top:60px;
				line-height:60px;
				color:#000000;
				text-align:center;
				border-bottom:solid 1px rgba(0,0,0,0.05);
			}

			.sidebar-logo{
				background-image:url(images/sidebar-logo.png);
				height:31px;
				width:150px;
				background-size:150px 31px;
				display:block;
				margin:25px 0px 25px 15px;
			}

			.sidebar-menu{margin-left:15px; margin-bottom:0px;}

			.sidebar-menu i{
				font-size:14px;
				width:35px;
				height:35px;
				line-height:35px;
				text-align:center;
				border-radius:35px;
				margin-right:15px;
			}

			.sidebar-menu ul li a .fa-circle{font-size:4px; margin-left:1px;}
			.sidebar-menu .fa-circle, .sidebar-menu .fa-angle-down{
				width:35px;
				height:35px;
				position:absolute;
				right:0px;
				top:14px;
				font-size:4px;
				color:#c9c9c9;
			}

			.sidebar-menu .fa-angle-down{font-size:12px;}

			.sidebar-menu section[expanded] .fa-angle-down{
				transform:rotate(180deg);
			}

			.sidebar-menu h4{
				background:none;
				border:none;
				color: #3a3a3a;
				line-height: 60px;
				font-size: 12px;
			}

			.sidebar-menu ul{
				line-height:50px;
				padding:10px 0px 20px 0px;
			}

			.sidebar-menu ul li a{
				color:#6b757d;
				font-size:11px;
				line-height:50px;
			}

			.sidebar-menu i:first-child{
				font-size:14px;
			}

			.sidebar-menu li a .fa-circle{margin-top:-5px;}

			.sidebar-divider{
				font-family: 'Roboto', sans-serif;
				margin-bottom: 20px;
				margin-top:0px;
				font-size: 10px;
				padding-left: 20px;
				font-weight: 800;
				text-transform: uppercase;
				color:#495254;
				border-bottom: solid 1px rgba(0,0,0,0.05);
				border-top: solid 1px rgba(0,0,0,0.05);
				line-height:40px;
				margin-bottom:0px;
			}

			.sidebar-copyright{
				margin-bottom:40px;
			}

			.sidebar-menu .sidebar-item{
				color:#1f1f1f;
				font-size:13px;
				line-height:60px;
			}

			.active-menu, .active-item{
				font-weight:600;
				color:#000000;
			}

			.active-menu .fa-circle, .active-item .fa-circle{
				color:#27ae60;
				opacity:1;
				font-size:8px;
				margin-top:-1px;
			}
			
			/* News */
			.decoration, .decoration-no-bottom{
				height:1px; 
				background-color:rgba(0,0,0,0.1);
			}

			.decoration{margin-bottom:30px;}
			.decoration-margins{margin:0px 20px 30px 20px}
			
			
			
			.news-top .news-share{
				margin-left:20px;
				margin-right:20px;
			}
			
			.news-header strong{
				display:block;
				color:#000000;
				font-size:20px;
				padding:10px 20px 10px 20px;
				font-weight:900;
			}

			.news-header em{
				color:#9b9b9b;
				font-size:12px;
				font-style: normal;
				padding-left:20px;
				padding-top:10px;
				display:block;
			}

			.news-header u{
				margin-left:20px;
				margin-top:15px;
				display:inline-block;
				font-size:11px;
				border-radius:10px;
				height:13px;
				padding:2px 10px 3px 10px;
				text-decoration: none;
			}

			.news-header i{
				float:right;
				padding-right:20px;
				padding-top:15px;
				font-size:12px;
				font-style:normal;
				color:#cacaca;
			}

			.news-header i span{
				padding-left:5px;
				color:#2980b9;
			}
			
			
			.news-box-item{
				width:45%;
				float:left;
			}

			.news-box-item amp-img{
				border-radius:5px;
			}

			.news-boxes .news-box-item:nth-child(2n){
				margin-left:10%;
			}

			.news-boxes .amp-carousel-button{
				transform:scale(1, 1);
				background-color:rgba(255,255,255,0.5);
				top:50px;
			}

			.news-box-item u{
				margin-left:0px;
				margin-top:15px;
				display:inline-block;
				font-size:11px;
				border-radius:10px;
				height:15px;
				padding:2px 10px 3px 10px;
				text-decoration: none;
			}

			.news-box-item strong, .news-box-item strong a {
				color:#1f1f1f;
				font-size:15px;
				display:block;
				padding-top:10px;
			}

			.news-box-item em{
				font-size:12px;
				color:#a0a0a0;
				font-style: normal;
				padding-top:10px;
				margin-bottom:20px;
				display:block;
			}

			.news-strip, news-strip-no-img{
				min-height:130px;
			}

			.news-strip amp-img{
				position:absolute;
				width:100px;
				right:0px;
				top:0px;
				border-radius:10px;
			}

			.news-strip strong{
				padding-right:120px;
				font-size:16px;
				line-height:25px;
				font-weight:900;
				display:block;
				color:#000000;
			}

			.news-strip-no-img strong{
				width:85%;
				font-size:16px;
				line-height:25px;
				font-weight:900;
				display:block;
				color:#000000;
				float:right;
			}

			.news-strip u, .news-strip-no-img u{
				display:block;
				text-decoration:none;
				font-size:12px;
				color:#a0a0a0;
			}

			.news-strip u{
				padding-top:10px;
				padding-bottom:20px;
			}

			.news-strip-no-img{
				padding-bottom:15px;
			}

			.news-strip-no-img u{
				padding-top:8px;
				width:15%;
				float:left;
			}

			.news-strip .news-share{
				padding:0px;
			}

			.news-strip h4 i{
				padding-right:120px;
			}

			.news-strip p{
				margin-top:20px;
				border-bottom:solid 1px rgba(0,0,0,0.1);
				margin-bottom:30px;
			}

			.magazine p{
				font-size:0.9em;
				margin-top:5px;
				border-bottom:solid 1px rgba(0,0,0,0.1);
				margin-bottom:30px;
			}
			.magazine amp-img{
				width:70px;
				height:100px;
			}

			/*Footer*/

			.footer{
				margin-bottom:30px;
			}
			
			.footer p{
				text-align: center;
				display: block;
				width: 80%;
				margin: 0px auto 15px auto;
			}

			.footer-logo{
				width:150px;
				height:40px;
				background-image:url(img/logo.png);
				background-repeat:no-repeat;
				background-size:150px 40px;
				margin:0px auto 20px auto;
			}

			.footer-socials a{
				width:40px;
				height:40px;
				line-height:40px;
				text-align:center;
				color:#1f1f1f;
				float:left;
			}

			.footer-socials{
				width:200px;
				height:30px;
				margin:0 auto;
			}	

			.full-post{
    padding-bottom:0px;
    padding-top:0px;
}

.full-post .news-box-content{
    margin-left:0px;
    margin-right:0px;
}

.news-box-content{
    border:solid 1px rgba(0,0,0,0.1);
    border-bottom:none;
    background-color:#FFFFFF;
    margin-left:10px;
    margin-right:10px;
    z-index:11;
    padding:20px;
    padding-bottom:10px;
}

.news-box-content .footer{
    margin-top:50px;
}

.news-box-content-title{
    font-size:23px; 
    font-weight:900;
    padding-bottom:5px;
}

.news-box-content-sub p{
    padding-bottom:0px;
}

.news-box-content-sub strong{
    font-size:12px;
    font-weight:400;
}

.news-box-content-sub a{
    font-size:12px;
    padding-left:5px;
}

.news-box-content-sub em{
    display:block;
    margin-top:-10px;
    margin-bottom:-5px;
    font-size:10px;
    font-style:normal;
    color:#9f9f9f;
}

/*Heading Block*/
.heading-block{
	padding:30px 20px;
	margin-bottom:30px;
}

.heading-block h4{
	position:relative;
	z-index:10;
	color:#FFFFFF;
}

.heading-block p{
	position:relative;
	z-index:10;
	color:rgba(255,255,255,0.5);
	margin-bottom:0px;
}

.heading-block a{
	z-index:10;
	width:100px;
	height:30px;
	line-height:30px;
	color:#FFFFFF;
	text-align:center;
	font-size:12px;
	margin:20px auto 0px auto;
	border:solid 1px rgba(255,255,255,0.5);
	border-radius:5px;
    display:block;
}

/*Таблицы */
table.adv {
  border-collapse: collapse;
  margin-bottom:50px;
  width:100%;
  line-height: 1.2em;
}
table.adv caption {
  padding: 10px;
  color: white;
  background: #9a316a;
  font-size: 16px;
  text-align: left;
}

table.adv th {
  border-bottom: 1px solid #9a316a;
  padding: 10px;
  text-align: center;
  font-size: 12px;
}
table.adv th:nth-child(1) {width: 55%;text-align: left;}
table.adv th:nth-child(2) {width: 15%;}
table.adv th:nth-child(3) {width: 15%;}
table.adv th:nth-child(4) {width: 15%;}

table.adv td {
  padding: 10px;
  text-align: center;
  height: 35px;
  font-size: 12px;
  border-right: 1px solid #9a316a;
}
table.adv td:nth-child(1) {text-align: left;}
table.adv td:nth-child(1),
table.adv td:nth-child(2),
table.adv td:nth-child(3),
table.adv td:nth-child(4) {border-right: 1px solid #9a316a;}

table.adv tr:nth-child(odd) {background: white;}
table.adv tr:nth-child(even) {background: #efe8ef;}
table.adv tr:last-child {border-bottom: 1px solid #9a316a;}

table.adv tr:hover {
  background-color: #ecdaec;
  cursor: pointer;
} 			
	

amp-user-notification.sample-notification {
    padding: var(--space-2);
    display: flex;
    align-items: center;
    justify-content: center;
	padding: 10px 10px;
	font-size:11px;
  }
  
  
  amp-user-notification.sample-notification > div {
    display: table-cell;
    padding-right: 10px;
    text-align: left;
  }	  
  
  amp-user-notification.sample-notification > button {
   display: table-cell;
    padding-right: 10px;
    text-align: right;
   color: #ffffff;
    padding: 5px 13px;
    background-color: #b32d6c;
    border-radius: 0px;
    -moz-border-radius: 30px;
    -webkit-border-radius: 5px;
    font-weight: 500;
	margin-right: 20px
  }	

	
		</style>
		
		<style amp-boilerplate="">
			body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}
			@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}
			@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}
			@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}
			@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}
			@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}
		</style>
		
		<noscript>
		<style amp-boilerplate="">
			body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}
		</style>
		</noscript>
		
		{/literal}
		
	</head>
	
	<body>
		<header>
			<a href="/amp" class="header-logo"></a>
			<button class="header-icon-2" on='tap:sidebar.toggle'><i class="fa fa-navicon"></i></button>
			<a href="#footer" class="header-icon-1"><i class="fa fa-envelope-o"></i></a>
		</header>
		<div class="header-clear"></div>
		
<amp-user-notification id="my-notification" class="sample-notification" layout="nodisplay">
	<div>Мы используем файлы cookie для наилучшего взаимодействия. Вы можете узнать больше о том, какие файлы cookie мы используем, в нашей <a href="/pages/privacy/amp">Политика конфиденциальности</a>.</div>
	<button on="tap:my-notification.dismiss">Хорошо</button>
</amp-user-notification>