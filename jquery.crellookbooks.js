/**
 * User: u029337 Sarah Becker
 * Date: 5/3/13
 * Time: 11:47 AM
 * Description:   CREL jQuery Plugin for Lookbooks
 *
 * 1. installRollovers:  If you have rollovers, install them using this method
 */

// TODO:  IMPROVE PARAMETERS/DATA

// TODO:  ABSTRACT COREMETRICS


jQuery.fn.extend({
    crelInitRollovers: function(options){
        $(options.hoverableSelector).mouseover(function(){
            if ($('.' + options.rolloverClassName).length > 0)
                $('.' + options.rolloverClassName).remove();

            var hoverclassid = this.id + 'Hover';

            var classlist;
            var insertDiv;

            if ($(this).hasClass(options.clickableClassName))
                classlist = options.rolloverClassName + ' ' + hoverclassid + ' ' + options.clickableClassName;
            else
                classlist = options.rolloverClassName + ' ' + hoverclassid;
            
            if ($(this).hasClass(options.CoremetricsClassName))
            	classlist += ' ' + options.CoremetricsClassName;
            
            if ($(this).hasClass('SocFacebook')) {
            	classlist += ' SocFacebook';
                insertDiv = '<a href="';
                insertDiv += options.socFacebookLink + '" target="blank" class="' + classlist;
                insertDiv += '"><div id="' + hoverclassid + '" class="' + classlist + '"></div></a>';
            } else if ($(this).hasClass('SocTwitter')){
            	classlist += ' SocTwitter';
                insertDiv = '<a href="';
                insertDiv += options.socTwitterLink + '" target="blank" class="' + classlist;
                insertDiv += '"><div id="' + hoverclassid + '" class="' + classlist + '"></div></a>';
            } else if ($(this).hasClass('SocPinterest')){
            	var pinImg = '';
            	classlist += ' SocPinterest';
                insertDiv = '<a href="';
                insertDiv += options.socPinterestLink;
                for (var i = 0; i < options.socPinterestImages.length; i++)
                	if (pinImg = options.socPinterestImages[i][$(this).parent().parent()[0].id])
                		break;
                if (pinImg)
                	insertDiv += '&media=' + encodeURIComponent(pinImg).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
                insertDiv += '" target="blank" class="' + classlist + '"><div id="' + hoverclassid + '" class="' + classlist + '"></div></a>';
            } else if ($(this).hasClass(options.ArrowClassName)){
            	classlist += ' ' + options.ArrowClassName;
            	insertDiv = '<div id="' + hoverclassid + '" class="';
                insertDiv += classlist + '"></div>';
            } else if($(this).hasClass(options.linkingClassName)) {
            	classlist += ' ' + options.linkingClassName;
            	var linkto = $(this).attr('link-to');
                var hrefLinkTo = $(this).attr('href')
            	insertDiv = '<a href="' + hrefLinkTo + '"><div id="' + hoverclassid + '" class="';
                insertDiv += classlist + '" link-to="' + linkto + '"></div></a>';
            } else {
            	var thisHref = $(this).attr('href');
            	insertDiv = '<a href="' + thisHref + '"><div id="' + hoverclassid + '" class="';
                insertDiv += classlist + '"></div></a>';
            }

            $(options.appendToDiv).prepend(insertDiv);
            
            $('div.' + options.rolloverClassName + '.' + options.linkingClassName).click(function(event){
                var thisSlide;
                if (!activeSlide)
                	thisSlide = options.firstSlide;	
                else
                	thisSlide = activeSlide;
                var nextSlide = $(this).attr('link-to');
                var thisid = $(this)[0].id;
                if ($(this).hasClass(options.CoremetricsClassName)){
                	var node = mapDomToCoremetricksLookup(thisid);
                	BLOOMIES.coremetrics.cmCreatePageElementTag(node.cmLabel, node.cmCategory);
                }
                activeSlide = nextSlide;
                $(this).crelSlideNext(thisSlide, nextSlide, options.CoremetricsCategory);
		        if ($('.' + options.rolloverClassName).length > 0)
	            $('.' + options.rolloverClassName).remove();
            });
            
            $('.' + options.clickableClassName).unbind('click');
            
            $('.' + options.clickableClassName).click(function(event){
               if ($('.' + options.overlayClassname).length > 0)
                    $('.' + options.overlayClassname).remove();
               
               if ($('.' + options.specialClassName1).length > 0)
            	   $('.' + options.specialClassName1).hide();
               
               if ($(this).hasClass(options.CoremetricsClassName)){
            	   if (this.nodeName == 'A') return;
            	   var node = mapDomToCoremetricksLookup($(this)[0].id);
    			   BLOOMIES.coremetrics.cmCreatePageElementTag(node.cmLabel, node.cmCategory);
               }
               
               if ($(this).hasClass(options.origOverlayClassname)){
                    $(this).crelOverlay(crellookbooksopts);
                } else if ($(this).hasClass(options.ArrowClassName)) {
                    $('#' + $(this)[0].id).crelClickHandler(options);
                } else // TODO:  CHECK THIS BRANCH
	                {
		                	var thisSlide = activeSlide;
		                    var nextSlide = $(this).attr('link-to');
		                    if (nextSlide){
			                    activeSlide = nextSlide;
			                    if (!(this).hasClass(options.shopLinkClassName) && (!$(this).hasClass(options.rolloverClassName))) {
			                    	$('#' + 'SuitStyleFacebook').crelSlideNext(thisSlide, nextSlide, options.CoremetricsCategory);
			                    }
		                    }
	                }
            });
        });

        $(options.nonhoverableSelector).mouseover(function(){
            if ($('.' + options.rolloverClassName).length > 0)
                $('.' + options.rolloverClassName).remove();
        });

        return $(this);
    },

    crelClickHandler:  function(options) {
        var nextSlide = '';
        var prevSlide = '';
        var elid;
        var hoverid;
        if ($(this)[0].id.indexOf('Hover') > -1) {
        	elid = $(this)[0].id.replace('Hover','');
        	hoverid = $(this)[0].id;
        }
        else {
        	elid = $(this)[0].id;
        	hoverid = elid + 'Hover';
        }
        
        var thisSlide = $('#' + elid).parent().parent()[0].id;

        MACYS.Faceted.facetCtrl.clearAll();
        
        // Right Arrow

        if (elid.indexOf('RightArrow') > -1) {
        	if (thisSlide == options.lastSlide)
        		nextSlide = options.firstSlide;
        	else
                nextSlide = $('#' + elid).parent().parent().next()[0].id;
        	
            $('#' + hoverid).remove();
            
            activeSlide = nextSlide;

            return $('#' + thisSlide).crelSlideRight(nextSlide, options.CoremetricsCategory);
        }

        // Left Arrow

        if (elid.indexOf('LeftArrow') > -1){
        	if (thisSlide == options.firstSlide)
        			nextSlide = options.lastSlide;
        	else 
        		nextSlide = $('#' + elid).parent().parent().prev()[0].id;

            $('#' + hoverid).remove();
            
            activeSlide = nextSlide;

            return $('#' + thisSlide).crelSlideLeft(nextSlide, options.CoremetricsCategory);
        }
    },

    crelSlideRight: function (nextSlide, CoremetricsCategory){
        var thisSlide = $(this)[0].id;
    	var node = mapDomToCoremetricksLookup(nextSlide);
        BLOOMIES.coremetrics.cmCreatePageviewTag(node.cmLabel, node.cmCategory,'','');
        $('#' + nextSlide).css('left',962);  
        $('#' + thisSlide).animate({left: -962});
        $('#' + thisSlide).hide();
        $('#' + nextSlide).show();
        $('#' + nextSlide).animate({left: 0});
    },

    crelSlideLeft: function (nextSlide, CoremetricsCategory){
        var thisSlide = $(this)[0].id;
    	var node = mapDomToCoremetricksLookup(nextSlide);
        BLOOMIES.coremetrics.cmCreatePageviewTag(node.cmLabel, node.cmCategory,'','');
        $('#' + nextSlide).css('left',-962);
        $('#' + thisSlide).animate({left: 962});
        $('#' + thisSlide).hide();
        $('#' + nextSlide).show();
        $('#' + nextSlide).animate({left: 0})
    },

    crelSlideNext: function (thisSlide, nextSlide, CoremetricsCategory){
    	var node = mapDomToCoremetricksLookup(nextSlide);
        BLOOMIES.coremetrics.cmCreatePageviewTag(node.cmLabel, node.cmCategory,'','');
        $('#' + thisSlide).hide();
        $('#' + thisSlide).css('left', 962);
        $('#' + nextSlide).show();
        $('#' + nextSlide).css({left: 0});
    },

    crelOverlay:  function(options){
        if ($('.' + options.rolloverClassName).length > 0)
            $('.' + options.rolloverClassName).remove();

        var elid = $(this)[0].id;
        var oid = elid + 'Overlay';
        var classlist = options.overlayClassname + ' ' + oid;
        var insertDiv = '<div id="' + oid + '" + class="' + classlist + '"></div>';
        $(options.appendToDiv).prepend(insertDiv);

        $('.' + options.overlayClassname).click(function(){
            if ($('.' + options.overlayClassname).length > 0)
                $('.' + options.overlayClassname).remove();
        });


        $('.' + options.overlayClassname).mouseover(function(){
            if ($('.' + options.rolloverClassName).length > 0)
                $('.' + options.rolloverClassName).remove();
        });
        
        return $(this);
    }
});

