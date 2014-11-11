//
//  ULICairoTestMacView.m
//  CairoTestMac
//
//  Created by Uli Kusterer on 2014-11-11.
//  Copyright (c) 2014 Uli Kusterer. All rights reserved.
//

#import "ULICairoTestMacView.h"
#import <cairo.h>
#import <cairo-quartz.h>


@implementation ULICairoTestMacView

-(BOOL)	isFlipped
{
	return YES;	// cairo_quartz_surface_create_for_cg_context assumes the context is flipped.
}

-(void)	drawRect: (NSRect)dirtyRect
{
    [super drawRect: dirtyRect];
    
	CGContextRef		macContext = NSGraphicsContext.currentContext.graphicsPort;
	
	cairo_surface_t*	theSurface = cairo_quartz_surface_create_for_cg_context( macContext, self.bounds.size.width, self.bounds.size.height );
	cairo_t*			theContext = cairo_create( theSurface );
	
	// === Use theSurface and theContext in platform-independent code here:
	
	cairo_set_line_width( theContext, 1 );
	cairo_set_source_rgb( theContext, 0, 0, 0 );
	cairo_rectangle( theContext, 10, 10, 100, 100 );
	cairo_stroke( theContext );
	
	// === End of platform-independent code.
	
	cairo_destroy(theContext);
	cairo_surface_destroy( theSurface );
}

@end
