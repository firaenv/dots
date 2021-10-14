/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[]          = { "Monofur Nerd Font Mono:size=16:antialias=true:autohint=true",
					"JoyPixels:size=12:antialias=true:autohint=true",
					"Material Icons:size=14:antialias=true:autohint=true" };
static const char *prompt      = "Run: ";      /* -p  option; prompt to the left of input field */
static const char fg[]        = "#B2B2B2";
static const char fg2[]       = "#E5E5E5";
static const char bg[]        = "#000000";
static const char *colors[SchemeLast][2]      = {
	/*               fg	bg	border   */
	[SchemeNorm] = { fg,	bg,	bg   },
	[SchemeSel]  = { fg2,	bg,	bg   },
};

/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
