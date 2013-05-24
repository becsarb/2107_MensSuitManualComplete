<!--TODO:  TO TURN THIS INTO JSP FILE GET RID OF DOCTYPE, AND TURN ALL PATHS INTO RELATIVES USING ${baseUrlAssets}/dyn_img/${dynImgFolder} -->
<style type="text/css">
    .Mens2013IntroRollovers {
        background: url('${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_RolloversSprite.png') no-repeat;
    }

    .Mens2013IntroOverlays {
        background: url('${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_OverlaysSprite.png') no-repeat;
    }

	#Mens2013DSMatchOverlay {
		position: absolute;
		top: 137px;
		left: 63px;
	    background: url('${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_SpinBgOverlay.jpg') no-repeat 0px 0px;
		width:616px;
		height:306px;
		z-index: 8000;
	}

	#DSMatchSpinItSlots{
		position: absolute;
	    background: url('${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_DSMatchSpinImg.jpg') no-repeat 0px 0px;
		left:321px;
		top:115px;
	    width: 102px;
	    height:200px;
		z-index: 9000;
		cursor: pointer;
	}

	.SpinningImages {
	    background: url('${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_DSMatchSpinShirts.jpg') no-repeat 0px 0px;
	    height:237px;
	}

	.slotsFullDescription {
	    background: url('${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_DSMatchSpinDescriptions.png') no-repeat 0px 0px;
	    width:207px;
	    height:40px;
	    z-index: 9999;
	}


</style>

<script type="text/javascript">
	var mensCompleteUrl = 'http://www1.bloomingdales.com/shop/mens/the-suit-shop?id=1000177'
	var facebookImage = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_Facebook.jpg';
	var pinterestImage1 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_PinterestSuitsShop.jpg';
	var pinterestImage2 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_PinterestSuits1.jpg';	
	var pinterestImage3 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_PinterestSuits2.jpg';
	var pinterestImage4 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_PinterestShirts1.jpg';
	var pinterestImage5 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_PinterestShirts2.jpg';
	var pinterestImage6 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_PinterestTies.jpg';
	var pinterestImage7 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_PinterestAccessories.jpg';
	var activeSlide;
	var mapDomCmArray = [];

	/**
	 * Coremetrics 
	 */
	
	function mapDomCmItem (domElementID, cmLabel, cmCategory){
		this.domElementID = domElementID;
		this.cmLabel = cmLabel;
		this.cmCategory = cmCategory;
	}

	function mapDomToCoremetricksLookup(elementID){
		var retValue;
		$.each(mapDomCmArray, function(key, value){
			if (value.domElementID == elementID || '#' + value.domElementID == elementID) {
				retValue = value;
			}
		});
		return retValue;
	}
</script>

<link rel="stylesheet" type="text/css" href="${baseUrlAssets}/dyn_img/${dynImgFolder}/mens2013_suitmanualstyles.css">
<script type="text/javascript" src="${baseUrlAssets}/web20/assets/script/bloomies/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${baseUrlAssets}/dyn_img/${dynImgFolder}/jquery.crellookbooks.js"></script>
<script type="text/javascript" src="${baseUrlAssets}/dyn_img/${dynImgFolder}/mens2013_suitmanual.js"></script>

<div id="Mens2013SuitManualComplete">
    <div id="Mens2013Intro">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_Intro.jpg" alt="Mens Suit Manual 2013 Start" usemap="#Mens2013IntroMap" />
        <map id="Mens2013IntroMap" name="Mens2013IntroMap">

            <!-- Non-hoverables, non-linkables -->

            <area id="Mens2013NL1" class="MensSuitIntroNonHoverable" shape="poly" coords="0,0,0,140,440,140,440,102,742,102,742,0" alt="Mens Suit Manual 2013" />

            <area id="Mens2013NL2" class="MensSuitIntroNonHoverable" shape="poly" coords="0,140,252,140,252,300,440,301,440,309,285,309,285,479,0,479" alt="Mens Suit Manual 2013" />

            <area id="Mens2013NL3" class="MensSuitIntroNonHoverable" shape="poly" coords="429,309,440,309,440,479,285,479,285,464,429,464" alt="Mens Suit Manual 2013" />

            <area id="Mens2013NL4" class="MensSuitIntroNonHoverable" shape="poly" coords="440,479,440,442,495,442,495,425,440,425,440,417,609,417,609,351,697,351,697,258,742,258" alt="Mens Suit Manual 2013" />

            <area id="Mens2013NL5" class="MensSuitIntroNonHoverable" shape="poly" coords="697,258,697,192,608,192,608,102,742,102,742,258,735,258,735,223,700,223" alt="Mens Suit Manual 2013" />

            <!-- Linkables and/or hoverables -->
            
            <area id="Mens2013ToDressShirts" class="MensSuitIntroHoverable Mens2013Linking" shape="rect" coords="253,140,441,258" alt="Mens Suit Manual 2013 Dress Shirts Time To Button Up" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSTheStyle"/>

            <area id="Mens2013DressShirtsIMA" class="MensSuitIntroHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="253,258,441,300" alt="Mens Suit Manual 2013 Dress Shirts Time To Button Up" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSTheStyle"/>

            <area id="Mens2013ToAccessories" class="MensSuitIntroHoverable Mens2013Linking" shape="rect" coords="286,311,428,422" alt="Mens Suit Manual 2013 Accessories Punctuate With Polish" href="#!fn=MENS_SUIT_SHOP_TYPE%3DAccessories%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Acces"/>
            
            <area id="Mens2013AccessoriesIMA" class="MensSuitIntroHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="286,422,428,463" alt="Mens Suit Manual 2013 Accessories Punctuate With Polish" href="#!fn=MENS_SUIT_SHOP_TYPE%3DAccessories%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Acces"/>

            <area id="Mens2013ToSuits" class="MensSuitIntroHoverable Mens2013Linking" shape="poly" coords="441,103,608,103,608,192,550,193,550,351,608,351,609,374,441,374" alt="Mens Suit Manual 2013 Suits" href="#!fn=MENS_SUIT_SHOP_TYPE%3DSuits%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013SuitsTheFit"/>

            <area id="Mens2013SuitsIMA" class="MensSuitIntroHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="441,375,609,417" alt="Mens Suit Manual 2013 Suits" href="#!fn=MENS_SUIT_SHOP_TYPE%3DSuits%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013SuitsTheFit"/>

            <area id="Mens2013ToTies" class="MensSuitIntroHoverable Mens2013Linking" shape="rect" coords="550,194,695,308" alt="Mens Suit Manual 2013 Ties Recognize The Patterns" href="#!fn=MENS_SUIT_SHOP_TYPE%3DTies%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Ties"/>

            <area id="Mens2013TiesIMA" class="MensSuitIntroHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="550,309,696,349" alt="Mens Suit Manual 2013 Ties Recognize The Patterns" href="#!fn=MENS_SUIT_SHOP_TYPE%3DTies%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Ties"/>

            <area id="IntroRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="699,224,736,257" alt="Mens Suit Manual 2013 Suits" href="javascript:void(0);"/>

            <area id="Mens2013Facebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="441,427,457,441" alt="Mens Suit Manual 2013 Facebook" href="javascript:void(0);"/>

            <area id="Mens2013Twitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="460,427,475,441" alt="Mens Suit Manual 2013 Twitter" href="javascript:void(0);"/>

            <area id="Mens2013Pinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="481,427,495,441" alt="Mens Suit Manual 2013 Pinterest" href="javascript:void(0);"/>
        </map>
    </div>


    <div id="Mens2013SuitsTheFit">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_SuitsTheFit.jpg" alt="Mens Suit Manual 2013 The Fit" usemap="#TheFitMap" />
        <map id="TheFitMap" name="TheFitMap">
            <!-- Non-hoverables, non-linkables -->
            <area id="STFNL1" class="MensSuitIntroNonHoverable" shape="poly" coords="0,0,83,0,83,6,26,6,26,222,4,222,4,259,40,259,40,479,0,479" alt="Men's Suit Manual:  The Fit" />

            <area id="STFNL2" class="MensSuitIntroNonHoverable" shape="poly" coords="84,0,84,22,27,27,5,222,41,223,41,479,312,479,312,0" alt="Men's Suit Manual:  The Fit" />

            <area id="STFNL3" class="MensSuitIntroNonHoverable" shape="poly" coords="312,25,713,25,742,0,742,223,700,223,700,259,742,259,742,479,312,479" alt="Men's Suit Manual:  The Fit" />

            <!-- Linkables and/or hoverables -->

            <area id="STFFacebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="26,7,44, 22" alt="Men's Suit Manual:  The Fit Facebook" href="javascript:void(0);"/>

            <area id="STFTwitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="46,7,64,22" alt="Men's Suit Manual:  The Fit Twitter" href="javascript:void(0);"/>

            <area id="STFPinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="67, 7, 84, 22" alt="Men's Suit Manual:  The Fit Pinterest" href="javascript:void(0);"/>

            <area id="STFTopSuitManual" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="312,0,381,24" alt="Men's Suit Manual:  The Fit" href="/shop/mens/the-suit-shop?id=1000177" link-to="Mens2013Intro"/>

            <area id="STFTopSuits1" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="414, 0, 452, 23" alt="Men's Suit Manual:  The Fit" href="#!fn=MENS_SUIT_SHOP_TYPE%3DSuits%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013SuitsTheFit"/>

            <area id="STFTopSuits2" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="456, 0, 466, 23" alt="Men's Suit Manual:  The Style" href="#!fn=MENS_SUIT_SHOP_TYPE%3DSuits%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013SuitsTheStyle"/>

            <area id="STFTopDressShirts1" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="486, 0, 568, 23" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSTheStyle"/>

            <area id="STFTopDressShirts2" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="573, 0, 582, 23" alt="Men's Suit Manual:  Dress Shirts Match Play" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSMatch"/>

            <area id="STFTopTies" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="602, 0, 624, 23" alt="Men's Suit Manual:  Ties" href="#!fn=MENS_SUIT_SHOP_TYPE%3DTies%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Ties"/>

            <area id="STFTopAccessories" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="646, 0, 712, 23" alt="Men's Suit Manual:  Accessories" href="#!fn=MENS_SUIT_SHOP_TYPE%3DAccessories%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Acces"/>

            <area id="STFLeftArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="4, 224, 41, 257" alt="Men's Suit Manual:  The Fit" href="javascript:void(0);"/>

            <area id="STFRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="699,224,736,257" alt="Men's Suit Manual:  The Fit" href="javascript:void(0);"/>
        </map>
    </div>


    <div id="Mens2013SuitsTheStyle">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_SuitsTheStyle.jpg" alt="Mens Suit Manual 2013 The Fit" usemap="#TheStyleMap" />
        <map id="TheStyleMap" name="TheStyleMap">
            <!-- Non-hoverables, non-linkables -->
            <area id="SuitStyleNL1" class="MensSuitIntroNonHoverable" shape="poly" coords="311,24,311,0,83,0,83,24,26,24,26,0,0,0,0,223,41,223,41,259,0,259,0,479,163,479,145,251,145,232,163,232" alt="Men's Suit Manual:  The Style" />

            <area id="SuitStyleNL2" class="MensSuitIntroNonHoverable" shape="poly" coords="164,497,164,231,310,25,382,25,382,0,412,0,412,25,301,233,283,233,283,251,301,251,301,479" alt="Men's Suit Manual:  The Style" />

            <area id="SuitStyleNL3" class="MensSuitIntroNonHoverable" shape="poly" coords="485,25,485,0,466,0,466,25,412,25,303,231,303,479,466,479,446,250,428,250,428,231,445,229" alt="Men's Suit Manual:  The Style" />

            <area id="SuitStyleNL4" class="MensSuitIntroNonHoverable" shape="poly" coords="581,0,581,25,484,25,447,233,447,479,582,479,582,251,565,251,565,233,582,235,582,0" alt="Men's Suit Manual:  The Style" />

            <area id="SuitStyleNL5" class="MensSuitIntroNonHoverable" shape="poly" coords="583,0,583,479,742,479,742,258,681,258,681,223,742,223,742,0,712,0,712,25,645,25,645,0,625,0,625,25,601,25,601,0,583,0" alt="Men's Suit Manual:  The Style" />

            <!-- Linkables and/or hoverables -->

            <area id="SuitStyleFacebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="26,0,44, 22" alt="Men's Suit Manual:  The Style Facebook" href="javascript:void(0);"/>

            <area id="SuitStyleTwitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="46,0,64,22" alt="Men's Suit Manual:  The Style Twitter" href="javascript:void(0);"/>

            <area id="SuitStylePinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="67, 7, 84, 22" alt="Men's Suit Manual:  The Style Pinterest" href="javascript:void(0);"/>

            <area id="SuitStyleTopSuitManual" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="312,0,381,24" alt="Men's Suit Manual" href="/shop/mens/the-suit-shop?id=1000177" link-to="Mens2013Intro"/>

            <area id="SuitStyleTopSuits1" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="414, 0, 452, 23" alt="Men's Suit Manual:  The Fit" href="#!fn=MENS_SUIT_SHOP_TYPE%3DSuits%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013SuitsTheFit"/>

            <area id="SuitStyleTopSuits2" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="458, 0, 464, 23" alt="Men's Suit Manual:  The Style" href="#!fn=MENS_SUIT_SHOP_TYPE%3DSuits%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013SuitsTheStyle"/>

            <area id="SuitStyleTopDressShirts1" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="486, 0, 568, 23" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSTheStyle"/>

            <area id="SuitStyleTopDressShirts2" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="575, 0, 580, 23" alt="Men's Suit Manual:  Dress Shirts Match Play" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSMatch"/>

            <area id="SuitStyleTopTies" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="602, 0, 624, 23" alt="Men's Suit Manual:  Ties" href="#!fn=MENS_SUIT_SHOP_TYPE%3DTies%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Ties"/>

            <area id="SuitStyleTopAccessories" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="646, 0, 712, 23" alt="Men's Suit Manual:  Accessories" href="#!fn=MENS_SUIT_SHOP_TYPE%3DAccessories%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Acces"/>

            <area id="SuitStyleLeftArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="4, 224, 41, 257" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>

            <area id="SuitStyleRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="699,224,736,257" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>

            <!-- Overlays -->

            <area id="SuitStyleC1" class="Mens2013Clickable Mens2013Overlay" shape="rect" coords="145,232,164,250" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>

            <area id="SuitStyleC2" class="Mens2013Clickable Mens2013Overlay" shape="rect" coords="248,232,301,250" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>

            <area id="SuitStyleC3" class="Mens2013Clickable Mens2013Overlay" shape="rect" coords="428,232,446,250" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>

            <area id="SuitStyleC4" class="Mens2013Clickable Mens2013Overlay" shape="rect" coords="565,232,583,250" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>

            <area id="SuitStyleC5" class="Mens2013Clickable Mens2013Overlay" shape="rect" coords="682,232,700,250" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>
        </map>
    </div>


    <div id="Mens2013DSTheStyle">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_DressShirtsFit.jpg" alt="Mens Suit Manual 2013 Dress Shirts The Fit" usemap="#DSStyleMap" />
        <map id="DSStyleMap" name="DSStyleMap">

            <!-- Non-hoverables, non-linkables -->

            <!-- Linkables and/or hoverables -->

            <area id="DSFacebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="26,0,44, 22" alt="Men's Suit Manual:  Dress Shirts Fit Facebook" href="javascript:void(0);"/>

            <area id="DSTwitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="46,0,64,22" alt="Men's Suit Manual:  Dress Shirts Fit Twitter" href="javascript:void(0);"/>

            <area id="DSPinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="67, 7, 84, 22" alt="Men's Suit Manual:  Dress Shirts Fit Pinterest" href="javascript:void(0);"/>

            <area id="DSTopSuitManual" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="312,0,381,24" alt="Men's Suit Manual" href="/shop/mens/the-suit-shop?id=1000177" link-to="Mens2013Intro"/>

            <area id="DSTopSuits1" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="414, 0, 452, 23" alt="Men's Suit Manual:  The Fit" href="#!fn=MENS_SUIT_SHOP_TYPE%3DSuits%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013SuitsTheFit"/>

            <area id="DSTopSuits2" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="458, 0, 464, 23" alt="Men's Suit Manual:  The Style" href="#!fn=MENS_SUIT_SHOP_TYPE%3DSuits%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013SuitsTheStyle"/>

            <area id="DSTopDressShirts1" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="486, 0, 568, 23" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSTheStyle"/>

            <area id="DSTopDressShirts2" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="575, 0, 580, 23" alt="Men's Suit Manual:  Dress Shirts Match Play" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSMatch"/>

            <area id="DSTopTies" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="602, 0, 624, 23" alt="Men's Suit Manual:  Ties" href="#!fn=MENS_SUIT_SHOP_TYPE%3DTies%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Ties"/>

            <area id="DSTopAccessories" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="646, 0, 712, 23" alt="Men's Suit Manual:  Accessories" href="#!fn=MENS_SUIT_SHOP_TYPE%3DAccessories%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Acces"/>

            <area id="DSLeftArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="4, 224, 41, 257" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>

            <area id="DSRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="699,224,735,258" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>

            <!-- Overlays -->

            <area id="DS1SizeGuide" class="Mens2013Clickable Mens2013Overlay CoremetricksElement" shape="rect" coords="425,142,533,153" alt="Men's Suit Manual:  Dress Shirts The Fit" href="javascript:void(0);"/>

            <area id="DS1SlimFit" class="Mens2013Clickable Mens2013Overlay ClickNonHoverable CoremetricksElement" shape="poly" coords="41,257,81,162,250,162,250,450,31,450,29,285" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_FIT%3DSlim%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="DS1ContemporaryFit" class="Mens2013Clickable Mens2013Overlay ClickNonHoverable CoremetricksElement" shape="rect" coords="257,162,475,453" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_FIT%3DContemporary%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="DS1RegularFit" class="Mens2013Clickable Mens2013Overlay ClickNonHoverable CoremetricksElement" shape="poly" coords="694,251,666,163,494,165,484,303,491,452,712,450,717,289" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_FIT%3DRegular%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>
        </map>
    </div>


    <div id="Mens2013DSMatch">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_DressShirtsMatch.jpg" alt="Mens Suit Manual 2013 Dress Shirts Match Play" usemap="#DSMatchMap" />
        <map id="DSMatchMap" name="DSMatchMap">

            <!-- Non-hoverables, non-linkables -->

            <area id="DSMatchNL1" class="MensSuitIntroNonHoverable" shape="poly" coords="62,479,0,479,0,260,43,260,43,221,0,221,0,0,27,0,27,25,86,25,86,0,311,0,312,25,713,25,713,0,742,0,742,222,699,222,699,258,742,258,742,479,687,479,687,183,423,134,423,112,318,112,318,134,59,134" alt="Men's Suit Manual:  The Style" />

            <!-- Linkables and/or hoverables -->

            <area id="DSMatchFacebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="26,0,44, 22" alt="Men's Suit Manual:  Dress Shirts Match Facebook" href="javascript:void(0);"/>

            <area id="DSMatchTwitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="46,0,64,22" alt="Men's Suit Manual:  Dress Shirts Match Twitter" href="javascript:void(0);"/>

            <area id="DSMatchPinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="67, 7, 84, 22" alt="Men's Suit Manual:  Dress Shirts Match Pinterest" href="javascript:void(0);"/>

            <area id="DSMatchTopSuitManual" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="312,0,381,24" alt="Men's Suit Manual" href="/shop/mens/the-suit-shop?id=1000177" link-to="Mens2013Intro"/>

            <area id="DSMatchTopSuits1" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="414, 0, 452, 23" alt="Men's Suit Manual:  The Fit" href="#!fn=MENS_SUIT_SHOP_TYPE%3DSuits%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013SuitsTheFit"/>

            <area id="DSMatchTopSuits2" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="458, 0, 464, 23" alt="Men's Suit Manual:  The Style" href="javascript:void(0);" link-to="Mens2013SuitsTheStyle"/>

            <area id="DSMatchTopDressShirts1" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="486, 0, 568, 23" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSTheStyle"/>

            <area id="DSMatchTopDressShirts2" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="575, 0, 580, 23" alt="Men's Suit Manual:  Dress Shirts Match Play" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSMatch"/>

            <area id="DSMatchTopTies" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="602, 0, 624, 23" alt="Men's Suit Manual:  Ties" href="#!fn=MENS_SUIT_SHOP_TYPE%3DTies%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Ties"/>

            <area id="DSMatchTopAccessories" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="646, 0, 712, 23" alt="Men's Suit Manual:  Accessories" href="#!fn=MENS_SUIT_SHOP_TYPE%3DAccessories%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Acces"/>

            <area id="DSMatchLeftArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="4, 224, 41, 257" alt="Men's Suit Manual:  Dress Shirts Match" href="javascript:void(0);"/>

            <area id="DSMatchRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="699,224,736,257" alt="Men's Suit Manual:  Dress Shirts Match" href="javascript:void(0);"/>

            <area id="DSMatchSpinIt" class="MensSuitIntroHoverable ClickNonHoverable Mens2013SlotMachine CoremetricksElement" shape="rect" coords="321, 115, 421,145" alt="Men's Suit Manual:  Dress Shirts Match" href="javascript:void(0);"/>

            <area id="DSMatchStripe" class="MensSuitIntroHoverable Mens2013Clickable ClickNonHoverable CoremetricksElement Mens2013ShopLink" shape="rect" coords="68,149,262,448" alt="Men's Suit Manual:  Dress Shirts Match" href="#!fn=MENS_DRESS_SHIRT_TYPE%3DStripe%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="DSMatchSolid" class="MensSuitIntroHoverable Mens2013Clickable ClickNonHoverable CoremetricksElement Mens2013ShopLink" shape="rect" coords="287,158,463,444" alt="Men's Suit Manual:  Dress Shirts Match" href="#!fn=MENS_DRESS_SHIRT_TYPE%3DSolid%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="DSMatchCheck" class="MensSuitIntroHoverable Mens2013Clickable ClickNonHoverable CoremetricksElement Mens2013ShopLink" shape="rect" coords="490,151,674,447" alt="Men's Suit Manual:  Dress Shirts Match" href="#!fn=MENS_DRESS_SHIRT_TYPE%3DCheck%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>
        </map>
    </div>


    <div id="Mens2013Ties">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_Ties.jpg" alt="Mens Suit Manual 2013 Dress Shirts Match Play" usemap="#TiesMap" />
        <map id="TiesMap" name="TiesMap">

            <!-- Non-hoverables, non-linkables -->

            <area id="TiesNL1" class="MensSuitIntroNonHoverable" shape="poly" coords="168,0,12,355,29,397,78,381,104,324,128,355,165,331,178,293,210,331,245,309,246,383,210,383,214,405,284,438,285,479,0,479,0,258,41,258,41,222,0,222,0,0,28,0,28,25,85,25,85,0" alt="Men's Suit Manual:  Ties" />

            <area id="TiesNL2" class="MensSuitIntroNonHoverable" shape="poly" coords="286,479,365,479,365,284,314,230,279,0,310,0,310,25,688,25,619,51,592,48,570,68,556,57,507,133,474,203,505,277,393,291,388,479" alt="Men's Suit Manual:  Ties" />
            
            <area id="TiesNL3" class="MensSuitIntroNonHoverable" shape="poly" coords="742,0,717,0,722,77,678,214,682,324,742,479,740,259,699,259,699,218,742,218" alt="Men's Suit Manual:  Ties" />

            <!-- Linkables and/or hoverables -->

            <area id="TiesFacebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="26,0,44, 22" alt="Men's Suit Manual:  Dress Shirts Match Facebook" href="javascript:void(0);"/>

            <area id="TiesTwitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="46,0,64,22" alt="Men's Suit Manual:  Dress Shirts Match Twitter" href="javascript:void(0);"/>

            <area id="TiesPinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="67, 7, 84, 22" alt="Men's Suit Manual:  Dress Shirts Match Pinterest" href="javascript:void(0);"/>

            <area id="TiesTopSuitManual" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="312,0,381,24" alt="Men's Suit Manual" href="/shop/mens/the-suit-shop?id=1000177" link-to="Mens2013Intro"/>

            <area id="TiesTopSuits1" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="414, 0, 452, 23" alt="Men's Suit Manual:  The Fit" href="#!fn=MENS_SUIT_SHOP_TYPE%3DSuits%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013SuitsTheFit"/>

            <area id="TiesTopSuits2" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="458, 0, 464, 23" alt="Men's Suit Manual:  The Style" href="javascript:void(0);" link-to="Mens2013SuitsTheStyle"/>

            <area id="TiesTopDressShirts1" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="486, 0, 568, 23" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSTheStyle"/>

            <area id="TiesTopDressShirts2" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="575, 0, 580, 23" alt="Men's Suit Manual:  Dress Shirts Match Play" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSMatch"/>

            <area id="TiesTopTies" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="602, 0, 624, 23" alt="Men's Suit Manual:  Ties" href="#!fn=MENS_SUIT_SHOP_TYPE%3DTies%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Ties"/>

            <area id="TiesTopAccessories" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="646, 0, 712, 23" alt="Men's Suit Manual:  Accessories" href="#!fn=MENS_SUIT_SHOP_TYPE%3DAccessories%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Acces"/>

            <area id="TiesLeftArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="4, 224, 41, 257" alt="Men's Suit Manual:  Dress Shirts Match" href="javascript:void(0);"/>

            <area id="TiesRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="699,224,735,257" alt="Men's Suit Manual:  Dress Shirts Match" href="javascript:void(0);"/>

            <!-- Shop -->

            <area id="TiesShopSkinny" class="Mens2013Shop CoremetricksElement Mens2013ShopLink" shape="poly" coords="169,0,13,355,30,397,77,381,104,323,164,331,178,292,211,331,246,309,247,383,211,383,215,405,285,438,362,436,362,292,262,292,315,235,275,0" alt="Men's Suit Manual:  Dress Shirts Match" href="#!fn=MENS_SUIT_SHOP_TYPE%3DTies%26TIE_TYPE%3DSkinny%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="TiesShopClassic" class="Mens2013Shop CoremetricksElement Mens2013ShopLink" shape="poly" coords="630,479,601,421,467,438,394,437,395,293,528,291,482,198,509,137,527,144,521,122,556,68,573,77,597,48,628,74,632,54,687,27,720,76,678,216,737,479" alt="Men's Suit Manual:  Dress Shirts Match" href="#!fn=MENS_SUIT_SHOP_TYPE%3DTies%26TIE_TYPE%3DClassic%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>
        </map>
    </div>


    <div id="Mens2013Acces">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_Accessories.jpg" alt="Mens Suit Manual 2013 Dress Shirts Match Play" usemap="#AccesMap" />
        <map id="AccesMap" name="AccesMap">

            <!-- Non-hoverables, non-linkables -->

            <area id="AccesNL1" class="MensSuitIntroNonHoverable" shape="poly" coords="34,479,0,479,0,261,42,261,42,220,0,220,0,0,26,0,26,25,88,25,88,0,309,0,309,25,715,25,715,0,742,0,742,26,360,26,309,223,35,300" alt="Men's Suit Manual:  The Style" />

            <!-- Linkables and/or hoverables -->

            <area id="AccesFacebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="26,0,44, 22" alt="Men's Suit Manual:  Dress Shirts Match Facebook" href="javascript:void(0);"/>

            <area id="AccesTwitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="46,0,64,22" alt="Men's Suit Manual:  Dress Shirts Match Twitter" href="javascript:void(0);"/>

            <area id="AccesPinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="67, 7, 84, 22" alt="Men's Suit Manual:  Dress Shirts Match Pinterest" href="javascript:void(0);"/>

            <area id="AccesTopSuitManual" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="312,0,381,24" alt="Men's Suit Manual" href="/shop/mens/the-suit-shop?id=1000177" link-to="Mens2013Intro"/>

            <area id="AccesTopSuits1" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="414, 0, 452, 23" alt="Men's Suit Manual:  The Fit" href="#!fn=MENS_SUIT_SHOP_TYPE%3DSuits%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013SuitsTheFit"/>

            <area id="AccesTopSuits2" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="458, 0, 464, 23" alt="Men's Suit Manual:  The Style" href="javascript:void(0);" link-to="Mens2013SuitsTheStyle"/>

            <area id="AccesTopDressShirts1" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="486, 0, 568, 23" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSTheStyle"/>

            <area id="AccesTopDressShirts2" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="575, 0, 580, 23" alt="Men's Suit Manual:  Dress Shirts Match Play" href="#!fn=MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013DSMatch"/>

            <area id="AccesTopTies" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="602, 0, 624, 23" alt="Men's Suit Manual:  Ties" href="#!fn=MENS_SUIT_SHOP_TYPE%3DTies%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Ties"/>

            <area id="AccesTopAccessories" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="646, 0, 712, 23" alt="Men's Suit Manual:  Accessories" href="#!fn=MENS_SUIT_SHOP_TYPE%3DAccessories%26sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Acces"/>

            <area id="AccesLeftArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="4, 224, 41, 257" alt="Men's Suit Manual:  Dress Shirts Match" href="javascript:void(0);"/>

            <area id="AccesRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="699,224,736,257" alt="Men's Suit Manual:  Dress Shirts Match" href="javascript:void(0);"/>


            <!-- Overlays -->

            <area id="AccesSock" class="Mens2013Clickable Mens2013Overlay CoremetricksElement Mens2013ShopLink" shape="rect" coords="36,311,460,461" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_SUIT_SHOP_ACCESSORY_TYPE%3DSocks%26MENS_SUIT_SHOP_TYPE%3DAccessories%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="AccesCufflinks" class="Mens2013Clickable Mens2013Overlay CoremetricksElement Mens2013ShopLink" shape="rect" coords="365,37,481,155" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_SUIT_SHOP_ACCESSORY_TYPE%3DCufflinks%26MENS_SUIT_SHOP_TYPE%3DAccessories%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="AccesBelts" class="Mens2013Clickable Mens2013Overlay CoremetricksElement Mens2013ShopLink" shape="poly" coords="243,252,252,289,359,311,521,286,524,225,495,201,508,191,501,166,432,159,369,171" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_SUIT_SHOP_ACCESSORY_TYPE%3DBelts%26MENS_SUIT_SHOP_TYPE%3DAccessories%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="AccesDressShoes" class="Mens2013Clickable Mens2013Overlay CoremetricksElement Mens2013ShopLink" shape="poly" coords="553,40,720,40,684,309,725,331,725,463,498,463,499,290,550,265,535,175" alt="Men's Suit Manual:  Dress Shirts The Fit" href="#!fn=MENS_SUIT_SHOP_ACCESSORY_TYPE%3DShoes%26MENS_SUIT_SHOP_TYPE%3DAccessories%26sortBy%3DORIGINAL%26productsPerPage%3D96 "/>
        </map>
    </div>
    
    <div id="slot_machine" class="Mens2013SlotMachine">
		<div id="Mens2013DSMatchOverlay"></div>
		<div id="DSMatchSpinItSlots" ></div>
		<div id="SlotsContainer">
				<div class="slots"  id="slots_a"></div>
				<div class="slots"  id="slots_b"></div>
				<div class="slots"  id="slots_c"></div>
		</div>
		<a href="#!fn=MENS_DRESS_SHIRT_TYPE%3DStripe%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"><div id="SlotsDescriptionTitleA" class="slotsFullDescription"></div></a>
		<a href="#!fn=MENS_DRESS_SHIRT_TYPE%3DSolid%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"><div id="SlotsDescriptionTitleB" class="slotsFullDescription"></div></a>
		<a href="#!fn=MENS_DRESS_SHIRT_TYPE%3DCheck%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"><div id="SlotsDescriptionTitleC" class="slotsFullDescription"></div></a>
		<div id="SlotsFullDescriptionA"></div>
		<div id="SlotsFullDescriptionB"></div>
		<div id="SlotsFullDescriptionC"></div>

	</div>
    
</div>

