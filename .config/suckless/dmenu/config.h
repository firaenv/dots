/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static const unsigned int alpha = 0xdd;
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"Monofur Nerd Font Mono:size=16:autohint=true:antialias=true",
	"Noto Color Emoji:size=16:autohint=true:antialias=true"
};
static const char *prompt      = "Run: ";      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#ABB2BF", "#282C34" },
	[SchemeSel] = { "#61AFEF", "#282C34" },
	[SchemeOut] = { "#198844", "#1d1f21" },
};

static const unsigned int alphas[SchemeLast][2] = {
	[SchemeNorm] = { OPAQUE, alpha },
	[SchemeSel] = { OPAQUE, alpha },
	[SchemeOut] = { OPAQUE, alpha },
};

/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;
/* -h option; minimum height of a menu line */
static unsigned int lineheight = 28;
static unsigned int min_lineheight = 8;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
static unsigned int border_width = 0;