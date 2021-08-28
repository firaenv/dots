/* See LICENSE file for copyright and license details. */

/* appearance */
#define BAR_HEIGHT "35"

static const unsigned int borderpx = 3;        /* border pixel of windows */
static const unsigned int gappx    = 8;        /* gaps between windows */
static const unsigned int snap     = 32;       /* snap pixel */
static const int showbar           = 1;        /* 0 means no bar */
static const int topbar            = 1;        /* 0 means bottom bar */
static const int user_bh           = 35; /* 0 means that dwm will calculate bar height, >= 1 means dwm will user_bh as bar height */

static const char *fonts[] = {
	"Monofur Nerd Font Mono:size=16:antialias=true:autohint=true",
	"Material Icons:size=14:antialias=true:autohint=true"
};

static const char fg[]  = "#452f38";
static const char bg[]  = "#100B0D";
static const char bg2[] = "#140E11";
static const char fg2[] = "#B294BB";
static const char *colors[][3] = {
	/*                   fg   bg  border   */
	[SchemeNorm]     = { fg,  bg,  bg },
	[SchemeSel]      = { fg2, bg,  fg2 },
	[SchemeStatus]   = { fg2, bg2, "#000000" }, // Statusbar right {text,background,not used but cannot be empty}
	[SchemeTagsSel]  = { fg2, bg2, "#000000" }, // Tagbar left selected {text,background,not used but cannot be empty}
	[SchemeTagsNorm] = { fg,  bg2, "#000000" }, // Tagbar left unselected {text,background,not used but cannot be empty}
	[SchemeInfoSel]  = { fg,  bg,  "#000000" }, // infobar middle  selected {text,background,not used but cannot be empty}
	[SchemeInfoNorm] = { fg,  bg,  "#000000" }, // infobar middle  unselected {text,background,not used but cannot be empty}
	[SchemeHid]      = { fg,  bg,  bg },
};

/* tagging */
static const char *tags[]    = {"", "", "", "", ""};
static const char *alttags[] = {"", "", "", "", ""};

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class  instance    title        tags mask  isfloating  monitor */
	{ NULL,   NULL,     "fzf-emoji",       0,          1,       -1 },
	{ NULL,   NULL,     "Event Tester",    0,          0,       -1 }, /* xev */
};

/* layout(s) */
static const float mfact     = 0.5; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }


#include "movestack.c"
static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY|ShiftMask,             XK_Return, spawn,          SHCMD("dmenu_run -p 'Run: '") },
	{ MODKEY,                       XK_Return, spawn,          SHCMD("$TERMINAL") },
	{ MODKEY,                       XK_f,      spawn,          SHCMD("pcmanfm") },
	{ MODKEY,                       XK_d,      spawn,          SHCMD("discord") },
	{ MODKEY,                       XK_g,      spawn,          SHCMD("gimp") },
	{ MODKEY,                       XK_w,      spawn,          SHCMD("qutebrowser") },
	{ MODKEY,                       XK_o,      spawn,          SHCMD("obs") },
	{ MODKEY,                       XK_s,      spawn,          SHCMD("config-sel") },
	{ MODKEY,                       XK_b,      togglebar,      {0} },

	{ MODKEY,                       XK_k,      focusstackvis,  {.i = +1 } },
	{ MODKEY,                       XK_j,      focusstackvis,  {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_k,      focusstackhid,  {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_j,      focusstackhid,  {.i = -1 } },

	{ MODKEY|ControlMask,           XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY|ControlMask,           XK_d,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY|ShiftMask,             XK_j,      movestack,      {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_k,      movestack,      {.i = -1 } },
	{ MODKEY,                       XK_space,  zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY,                       XK_q,      killclient,     {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY|ShiftMask,             XK_f,      togglefullscr,  {0} },

	/* Audio */
	{ MODKEY,                       XK_bracketright,   spawn,    SHCMD("pactl set-sink-volume @DEFAULT_SINK@ +5%") },
	{ MODKEY,                       XK_bracketleft,    spawn,    SHCMD("pactl set-sink-volume @DEFAULT_SINK@ -5%") },
	{ MODKEY|ControlMask,           XK_bracketright,   spawn,    SHCMD("pactl set-sink-volume @DEFAULT_SINK@ +1%") },
	{ MODKEY|ControlMask,           XK_bracketleft,    spawn,    SHCMD("pactl set-sink-volume @DEFAULT_SINK@ -1%") },

	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },

	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY|ShiftMask,             XK_q,      quit,           {0} },
	{ MODKEY|ControlMask,           XK_r,      quit,           {1} },  /* Restart DWM */
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button1,        togglewin,      {0} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          SHCMD("$TERMINAL") },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

