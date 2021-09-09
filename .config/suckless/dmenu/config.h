/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"Monofur Nerd Font Mono:size=14:antialias=true:autohint=true"
};
static const char *prompt      = "Run: ";      /* -p  option; prompt to the left of input field */
static const char fg[]  = "#e9e3ed";
static const char bg[]  = "#011e46";
static const char fg2[] = "#f842ff";
static const char *colors[SchemeLast][2] = {
	                  /* fg   bg */
	[SchemeNorm]     = { fg,  bg, },
	[SchemeSel]      = { fg2, bg, },
	[SchemeOut] = { "#000000", "#00ffff" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;
/* -h option; minimum height of a menu line */
static unsigned int lineheight = 25;
static unsigned int min_lineheight = 14;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
