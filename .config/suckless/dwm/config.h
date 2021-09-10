/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 5;        /* border pixel of windows */
static const unsigned int gappx     = 16;        /* gaps between windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 0;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "Monofur Nerd Font Mono:size=16:antialias=true:autohint=true",
					"JoyPixels:size=12:antialias=true:autohint=true",
					"Material Icons:size=14:antialias=true:autohint=true" };
static const char fg[]        = "#e9e3ed";
static const char fg2[]       = "#f842ff";
static const char bg[]        = "#011e46";
static const char bg2[]       = "#011e46";
static const char *colors[][3]      = {
	/*               fg	bg	border   */
	[SchemeNorm] = { fg,	bg,	bg   },
	[SchemeSel]  = { fg2,	bg,	fg2  },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       0,            0,           -1 },
};

/* layout(s) */
static const float mfact     = 0.5; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[T]",      tile },    /* first entry is default */
	{ "[F]",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod1Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} }, \

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", NULL };
static const char *termcmd[]  = { "alacritty", NULL };

static const char *gimpcmd[]  = { "gimp", NULL };
static const char *obscmd[]   = { "obs", NULL };
static const char *disccmd[]  = { "discord", NULL };
static const char *filecmd[]  = { "alacritty", "-e", "fff", NULL };
static const char *musicmd[]  = { "alacritty", "-e", "cmus", NULL };
static const char *qutecmd[]  = { "qutebrowser", NULL };
static const char *timecmd[]  = { "time_date", NULL };
static const char *subscmd[]  = { "subcount", NULL };
static const char *cnfscmd[]  = { "config-sel", NULL };
static const char *cnfecmd[]  = { "execscripts", NULL };
static const char *emojcmd[]  = { "dmenuemoji", NULL };
static const char *wallcmd[]  = { "wall-select", NULL };

static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY|ShiftMask,		XK_Return, spawn,          {.v = dmenucmd } },
	{ MODKEY,			XK_Return, spawn,          {.v = termcmd } },
	
	{ MODKEY,			XK_f,	   spawn,          {.v = filecmd } },
	{ MODKEY,			XK_p,	   spawn,          {.v = musicmd } },
	{ MODKEY,			XK_t,	   spawn,          {.v = timecmd } },
	{ MODKEY,			XK_g,	   spawn,          {.v = gimpcmd } },
	{ MODKEY,			XK_w,	   spawn,          {.v = qutecmd } },
	{ MODKEY|ShiftMask,		XK_w,	   spawn,          {.v = wallcmd } },
	{ MODKEY,			XK_d,	   spawn,          {.v = disccmd } },
	{ MODKEY,			XK_o,	   spawn,          {.v = obscmd  } },
	{ MODKEY,			XK_s,	   spawn,          {.v = cnfscmd } },
	{ MODKEY|ShiftMask,		XK_s,	   spawn,          {.v = subscmd } },
	{ MODKEY,			XK_e,	   spawn,          {.v = cnfecmd } },
	{ MODKEY|ShiftMask,		XK_e,	   spawn,          {.v = emojcmd } },

	{ MODKEY,                       XK_bracketright,   spawn,    SHCMD("volup") },
	{ MODKEY,                       XK_bracketleft,    spawn,    SHCMD("voldown") },

	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY|ControlMask,		XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY|ControlMask,		XK_d,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY|ControlMask,		XK_Return, zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY,			XK_q,      killclient,     {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
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
	{ MODKEY|ShiftMask,             XK_q,      quit,           {0} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

