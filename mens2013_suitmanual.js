/**
 * User: u029337
 * Date: 5/1/13
 * Time: 4:18 PM
 * Description: Mens Suit Manual Complete
 *
 * Notes
 * -----
 * There are three classes of image map areas:
 * 1. MensSuitIntroHoverable
 * 2. MensSuitIntroNonHoverable
 * 3. MensSuitIntroLinkable
 *
 * For the Intro image, the image map areas that are assigned class MensSuitIntroHoverable, are also
 * MenSuitIntroLinkable
 *
 * TODO:  Clean up all hard-coded values below
 *
 */

var facebookUrl = 'http://www.facebook.com/sharer/sharer.php?s=100';
var facebookTitle = 'Men\'s Suit Manual - Fashion Index | Bloomingdale\'s';
var facebookSummary = 'Head to the new Suit Manual—because you need to rock a suit, not just wear one.' 
//var facebookImage = 'images/Mens2013_Facebook.jpg';
var socFacebookLink = facebookUrl;
socFacebookLink += '&p[title]=' + encodeURIComponent(facebookTitle).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
socFacebookLink += '&p[summary]=' + encodeURIComponent(facebookSummary).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
//socFacebookLink += '&p[images][0]=' + encodeURIComponent(facebookImage).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
socFacebookLink += '&p[url]=' + encodeURIComponent(mensCompleteUrl).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
socFacebookLink += '&p[images][0]=' + facebookImage;

var twitterUrl = 'http://twitter.com/intent/tweet?source=webclient&text=';
var twitterTextParam = 'Head to the new Men\'s Suit Manual @Bloomingdales—where fit is king. http://www1.bloomingdales.com/shop/mens/the-suit-shop?id=1000177';
var socTwitterLink = twitterUrl;
socTwitterLink += encodeURIComponent(twitterTextParam).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");

var pinterestUrl = 'http://pinterest.com/pin/create/button/';
var pinterestUrlParam = 'http://www1.bloomingdales.com/shop/mens/the-suit-shop?id=1000177';
var pinterestDescriptionParam = 'Men\'s Suit Manual - Fashion Index | Bloomingdale\'s';
var socPinterestLink = pinterestUrl;
socPinterestLink += '?url=' + encodeURIComponent(pinterestUrlParam).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
socPinterestLink += '&description=' + encodeURIComponent(pinterestDescriptionParam).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
//socPinterestLink += '&media=' + encodeURIComponent(pinterestImage).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");



/**
 *
 * Below vars are for the Slots/Spinit Function
 */
var total_pic_per_slot=15;
var currentindex=3;
var numberOfSpins = 1;


/**
 *
 * Setup for lookbook plugin
 */

var crellookbooksopts = {
    'firstSlide': 'Mens2013Intro',
    'lastSlide': 'Mens2013Acces',
    'topContainerDiv':  '#Mens2013SuitManualComplete',
    'hoverableSelector': '#Mens2013SuitManualComplete map .MensSuitIntroHoverable',
    'nonhoverableSelector': '#Mens2013SuitManualComplete map .MensSuitIntroNonHoverable',
    'rolloverClassName': 'Mens2013IntroRollovers',
    'overlayClassname': 'Mens2013IntroOverlays',
    'origOverlayClassname': 'Mens2013Overlay',
    'clickableClassName': 'Mens2013Clickable',
    'linkingClassName': 'Mens2013Linking',
    'ArrowClassName': 'Mens2013Arrow',
    'CoremetricsClassName': 'CoremetricksElement',
    'CoremetricsCategory': 'spring13_mens_suit',
    'nonHoverableClassName': 'ClickNonHoverable',
    'shopLinkClassName': 'Mens2013ShopLink',
    'specialClassName1': 'Mens2013SlotMachine',
    'appendToDiv': '#Mens2013SuitManualComplete',
    'socFacebookLink': socFacebookLink,
    'socTwitterLink': socTwitterLink,
    'socPinterestLink': socPinterestLink,
    'socPinterestImages': [{'Mens2013Intro':pinterestImage1},
                           {'Mens2013SuitsTheFit':pinterestImage2},
                           {'Mens2013SuitsTheStyle':pinterestImage3},
                           {'Mens2013DSTheStyle':pinterestImage4},
                           {'Mens2013DSMatch':pinterestImage5},
                           {'Mens2013Ties':pinterestImage6},
                           {'Mens2013Acces':pinterestImage7}
                           ]
    }

/**
 * Coremetrics 
 */


function mapDomToCoremetricsTags(){
	mapDomCmArray.push(new mapDomCmItem('Mens2013Intro', 'spring13_mens_suit--hp', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('Mens2013DressShirts', 'link--dressshirts', 'spring13_mens_suit--hp'));
	mapDomCmArray.push(new mapDomCmItem('Mens2013DressShirtsIMAHover', 'link--dressshirts', 'spring13_mens_suit--hp'));
	mapDomCmArray.push(new mapDomCmItem('Mens2013Accessories', 'link--accessories', 'spring13_mens_suit--hp'));
	mapDomCmArray.push(new mapDomCmItem('Mens2013AccessoriesIMAHover', 'link--accessories', 'spring13_mens_suit--hp'));
	mapDomCmArray.push(new mapDomCmItem('Mens2013Suits', 'link--suits', 'spring13_mens_suit--hp'));
	mapDomCmArray.push(new mapDomCmItem('Mens2013SuitsIMAHover', 'link--suits', 'spring13_mens_suit--hp'));
	mapDomCmArray.push(new mapDomCmItem('Mens2013Ties', 'link--ties', 'spring13_mens_suit--hp'));
	mapDomCmArray.push(new mapDomCmItem('Mens2013TiesIMAHover', 'link--ties', 'spring13_mens_suit--hp'));
	mapDomCmArray.push(new mapDomCmItem('Mens2013FacebookHover', 'social-fb', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('Mens2013TwitterHover', 'social-twitter', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('Mens2013PinterestHover', 'social-pinterest', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('IntroRightArrowHover', 'right-arrow', 'spring13_mens_suit'));
	
	mapDomCmArray.push(new mapDomCmItem('Mens2013SuitsTheFit', 'spring13_mens_suit--suits_fit', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('STFTopSuitManual', 'top_nav--suit_manual', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('STFTopSuits1', 'top_nav--suits-1', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('STFTopSuits2', 'top_nav--suits-2', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('STFTopDressShirts1', 'top_nav--dress_shirts-1', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('STFTopDressShirts2', 'top_nav--dress_shirts-2', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('STFTopTies', 'top_nav--ties', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('STFTopAccessories', 'top_nav--accessories', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('STFFacebookHover', 'social-fb', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('STFTwitterHover', 'social-twitter', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('STFPinterestHover', 'social-pinterest', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('STFLeftArrowHover', 'left-arrow', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('STFRightArrowHover', 'right-arrow', 'spring13_mens_suit'));
	
	mapDomCmArray.push(new mapDomCmItem('Mens2013SuitsTheStyle', 'spring13_mens_suit--style', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleTopSuitManual', 'top_nav--suit_manual', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleTopSuits1', 'top_nav--suits-1', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleTopSuits2', 'top_nav--suits-2', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleTopDressShirts1', 'top_nav--dress_shirts-1', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleTopDressShirts2', 'top_nav--dress_shirts-2', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleTopTies', 'top_nav--ties', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleTopAccessories', 'top_nav--accessories', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleFacebookHover', 'social-fb', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleTwitterHover', 'social-twitter', 'spring13_mens_suit', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('SuitStylePinterestHover', 'social-pinterest', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleLeftArrowHover', 'left-arrow', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleRightArrowHover', 'right-arrow', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleC1Overlay', 'spring13_mens_suit--style', 'look-1'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleC2Overlay', 'spring13_mens_suit--style', 'look-2'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleC3Overlay', 'spring13_mens_suit--style', 'look-3'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleC4Overlay', 'spring13_mens_suit--style', 'look-4'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleC5Overlay', 'spring13_mens_suit--style', 'look-5'));
	
	mapDomCmArray.push(new mapDomCmItem('Mens2013DSTheStyle', 'spring13_mens_suit--dressshirts_fit', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('DSTopSuitManual', 'top_nav--suit_manual', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSTopSuits1', 'top_nav--suits-1', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSTopSuits2', 'top_nav--suits-2', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSTopDressShirts1', 'top_nav--dress_shirts-1', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSTopDressShirts2', 'top_nav--dress_shirts-2', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSTopTies', 'top_nav--ties', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSTopAccessories', 'top_nav--accessories', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSFacebookHover', 'social-fb', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('DSTwitterHover', 'social-twitter', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('DSPinterestHover', 'social-pinterest', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('DSLeftArrowHover', 'left-arrow', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSRightArrowHover', 'right-arrow', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('DS1SizeGuide', 'link-size_guide', 'spring13_mens_suit--dressshirts_fit'));
	mapDomCmArray.push(new mapDomCmItem('DS1SlimFit', 'link--slim', 'spring13_mens_suit--dressshirts_fit'));
	mapDomCmArray.push(new mapDomCmItem('DS1ContemporaryFit', 'link--contemporary', 'spring13_mens_suit--dressshirts_fit'));
	mapDomCmArray.push(new mapDomCmItem('DS1RegularFit', 'link--regular', 'spring13_mens_suit--dressshirts_fit'));
	
	mapDomCmArray.push(new mapDomCmItem('Mens2013DSMatch', 'spring13_mens_suit--dressshirts_match_play', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('DSMatchTopSuitManual', 'top_nav--suit_manual', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSMatchTopSuits1', 'top_nav--suits-1', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSMatchTopSuits2', 'top_nav--suits-2', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSMatchTopDressShirts1', 'top_nav--dress_shirts-1', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSMatchTopDressShirts2', 'top_nav--dress_shirts-2', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSMatchTopTies', 'top_nav--ties', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSMatchTopAccessories', 'top_nav--accessories', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSMatchFacebookHover', 'social-fb', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('DSMatchTwitterHover', 'social-twitter', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('DSMatchPinterestHover', 'social-pinterest', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('DSMatchLeftArrowHover', 'left-arrow', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('DSMatchRightArrowHover', 'right-arrow', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('DSMatchStripe', 'shop--stripe', 'spring13_mens_suit--dressshirts_match_play'));
	mapDomCmArray.push(new mapDomCmItem('DSMatchSolid', 'shop--solid', 'spring13_mens_suit--dressshirts_match_play'));
	mapDomCmArray.push(new mapDomCmItem('DSMatchCheck', 'shop--check', 'spring13_mens_suit--dressshirts_match_play'));
	mapDomCmArray.push(new mapDomCmItem('DSMatchSpinIt', 'spin_it-1', 'spring13_mens_suit--dressshirts_match_play'));
	
	mapDomCmArray.push(new mapDomCmItem('Mens2013Ties', 'spring13_mens_suit--ties', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('TiesTopSuitManual', 'top_nav--suit_manual', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('TiesTopSuits1', 'top_nav--suits-1', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('TiesTopSuits2', 'top_nav--suits-2', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('TiesTopDressShirts1', 'top_nav--dress_shirts-1', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('TiesTopDressShirts2', 'top_nav--dress_shirts-2', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('TiesTopTies', 'top_nav--ties', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('TiesTopAccessories', 'top_nav--accessories', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('TiesFacebookHover', 'social-fb', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('TiesTwitterHover', 'social-twitter', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('TiesPinterestHover', 'social-pinterest', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('TiesLeftArrowHover', 'left-arrow', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('TiesRightArrowHover', 'right-arrow', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('TiesShopSkinny', 'shop--skinny', 'spring13_mens_suit--ties'));
	mapDomCmArray.push(new mapDomCmItem('TiesShopClassic', 'shop--classic', 'spring13_mens_suit--ties'));
	
	mapDomCmArray.push(new mapDomCmItem('Mens2013Acces', 'spring13_mens_suit--punctuation_marks', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('AccesTopSuitManual', 'top_nav--suit_manual', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('AccesTopSuits1', 'top_nav--suits-1', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('AccesTopSuits2', 'top_nav--suits-2', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('AccesTopDressShirts1', 'top_nav--dress_shirts-1', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('AccesTopDressShirts2', 'top_nav--dress_shirts-2', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('AccesTopAcces', 'top_nav--Ties', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('AccesTopAccessories', 'top_nav--accessories', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('AccesFacebookHover', 'social-fb', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('AccesTwitterHover', 'social-twitter', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('AccesPinterestHover', 'social-pinterest', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('AccesLeftArrowHover', 'left-arrow', 'spring13_mens_suit'));	
	mapDomCmArray.push(new mapDomCmItem('AccesRightArrowHover', 'right-arrow', 'spring13_mens_suit'));
	mapDomCmArray.push(new mapDomCmItem('AccesSock', 'link--socks', 'spring13_mens_suit--punctuation_marks'));
	mapDomCmArray.push(new mapDomCmItem('AccesCufflinks', 'link--cufflinks', 'spring13_mens_suit--punctuation_marks'));
	mapDomCmArray.push(new mapDomCmItem('AccesBelts', 'link--belts', 'spring13_mens_suit--punctuation_marks'));
	mapDomCmArray.push(new mapDomCmItem('AccesDressShoes', 'link--dressshoes', 'spring13_mens_suit--punctuation_marks'));
	
	mapDomCmArray.push(new mapDomCmItem('DSMatchSpinIt', 'spin_it-1', 'spring13_mens_suit--dressshirts_match_play'));
	mapDomCmArray.push(new mapDomCmItem('DSMatchSpinItSlots', 'spin_it-', 'spring13_mens_suit--dressshirts_match_play'));
}

function initCoremetrics (){
	mapDomToCoremetricsTags();
	
	// Intro page hard coded values 
	BLOOMIES.coremetrics.cmCreatePageviewTag('spring13_mens_suit--hp', 'spring13_mens_suit', '', '');
}



$(function(){
    initCoremetrics();
    
    $(crellookbooksopts.hoverableSelector).crelInitRollovers(crellookbooksopts);

    $('.' + crellookbooksopts.linkingClassName).click(function(event){
        //event.stopPropagation();
        if ($('.' + crellookbooksopts.specialClassName1).length > 0)
     	   $('.' + crellookbooksopts.specialClassName1).hide();
        var oldl = window.location.href.split('#')[0];
        window.location.hash = $(this).attr('href');
        window.location.href = oldl + window.location.hash;
        //MACYS.Faceted.facetCtrl.clearAll();
        var thisSlide = $(this).parent().parent()[0].id;
        var nextSlide = $(this).attr('link-to');
        if ($(this).hasClass(crellookbooksopts.CoremetricsClassName)){
        	var node = mapDomToCoremetricksLookup($(this)[0].id);
        	BLOOMIES.coremetrics.cmCreatePageElementTag(node.cmLabel, node.cmCategory);
        }
        activeSlide = nextSlide;
        $(this).crelSlideNext(thisSlide, nextSlide);
    });
    
    $('.' + crellookbooksopts.clickableClassName).click(function(event){
    	//event.stopPropagation();
        if ($('.' + crellookbooksopts.specialClassName1).length > 0)
     	   $('.' + crellookbooksopts.specialClassName1).hide();
        if ($('.' + crellookbooksopts.overlayClassname).length > 0)
            $('.' + crellookbooksopts.overlayClassname).remove();
       
        if ($(this).hasClass(crellookbooksopts.CoremetricsClassName)) {
        	var node = mapDomToCoremetricksLookup($(this)[0].id);
     	   	BLOOMIES.coremetrics.cmCreatePageElementTag(node.cmLabel, node.cmCategory);
        }
       
        if ($(this).hasClass(crellookbooksopts.origOverlayClassname))
            $(this).crelOverlay(crellookbooksopts);
    });
    
    $(crellookbooksopts.nonhoverableSelector).click(function(){
        if ($('.' + crellookbooksopts.overlayClassname).length > 0)
            $('.' + crellookbooksopts.overlayClassname).remove();

        if ($('.' + crellookbooksopts.rolloverClassName).length > 0)
            $('.' + crellookbooksopts.rolloverClassName).remove();
    });

    $('.' + crellookbooksopts.nonHoverableClassName).mouseover(function(){

        if ($('.' + crellookbooksopts.rolloverClassName).length > 0)
            $('.' + crellookbooksopts.rolloverClassName).remove();
    });
    
    $('#DSMatchSpinIt').click(function(){
    	var node = mapDomToCoremetricksLookup('DSMatchSpinIt');
    	BLOOMIES.coremetrics.cmCreatePageElementTag(node.cmLabel, node.cmCategory);

    	$('#slot_machine').show();
    	spin_button_click();

    	$('#DSMatchSpinItSlots').click(function(){
    		numberOfSpins++;
        	var node = mapDomToCoremetricksLookup('DSMatchSpinItSlots');
        	BLOOMIES.coremetrics.cmCreatePageElementTag(node.cmLabel + numberOfSpins, node.cmCategory);
        	spin_button_click();
    	});
    });
});

/**
 * Slot/Spinit functions below 
 */

function spin_button_click(){
    $("#slots_a").stop(true,true);
    $("#slots_b").stop(true,true);
    $("#slots_c").stop(true,true);
    $("#SlotsFullDescriptionA").stop(true,true);
    $("#SlotsFullDescriptionB").stop(true,true);
    $("#SlotsFullDescriptionC").stop(true,true);
    initiate_slots_for_animation($("#slots_a"),currentindex+0,(currentindex+1)%4+0);
    initiate_slots_for_animation($("#slots_b"),currentindex+4,(currentindex+1)%4+4);
    initiate_slots_for_animation($("#slots_c"),currentindex+8,(currentindex+1)%4+8);
    animate_slots($("#slots_a"),$("#SlotsFullDescriptionA"),(currentindex+1)%4+0);
    animate_slots($("#slots_b"),$("#SlotsFullDescriptionB"),(currentindex+1)%4+4);
    animate_slots($("#slots_c"),$("#SlotsFullDescriptionC"),(currentindex+1)%4+8);
    currentindex=(currentindex+1)%4;
}

function initiate_slots_for_animation(slot_dom, startindex, lastindex){
    slot_dom.empty();
    slot_dom.append("<div class='SpinningImages' id='SpinningImage"+(startindex+1)+"'/>");
    for(var i = 1; i < total_pic_per_slot-1; i++){
        var random_slot_picture_index = Math.floor(Math.random()*total_pic_per_slot);
        slot_dom.append("<div class='SpinningImages' id='SpinningImage"+random_slot_picture_index+"'/>");
    }
    slot_dom.append("<div class='SpinningImages' id='SpinningImage"+(lastindex+1)+"'/>");
}

function animate_slots(slot_dom, description_dom, lastindex){
    description_dom.fadeOut(100)

    var animation_duration = 2000+Math.round(Math.random()*1000);;
    slot_dom.css({
        "marginTop": "0px"
    });
    var marginTop =parseInt(slot_dom.css('marginTop'))- (((total_pic_per_slot-1)) * 237);

    slot_dom.animate(
        {'margin-top':marginTop+"px"},
        animation_duration,
        function(){
            description_dom.empty();
            description_dom.append("<div class='slotsFullDescription' id='FullDescription"+(lastindex+1)+"'/>");
            description_dom.fadeIn(500)
        });
}


