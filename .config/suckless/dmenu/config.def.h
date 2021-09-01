/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"Monofur Nerd Font Mono:size=16:antialias=true:autohint=true"
};
static const char *prompt      = "Run: ";      /* -p  option; prompt to the left of input field */
static const char fg[]  = "#D5D3C5";
static const char bg[]  = "#1A252F";
static const char bg2[] = "#27323D";
static const char fg2[] = "#3ECF97";
static const char *colors[SchemeLast][2] = {
	                  /* fg   bg */
	[SchemeNorm]     = { fg,  bg, },
	[SchemeSel]      = { fg2, bg, },
	[SchemeOut] = { "#000000", "#00ffff" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;
/* -h option; minimum height of a menu line */
static unsigned int lineheight = 35;
static unsigned int min_lineheight = 16;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";