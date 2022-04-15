//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/

    {"",    "echo ''",                         0,      0},

	/* {"", "dwmblocks_net",			1,		0}, */
	
	{"", "dwmblocks_battery",		10,		0},

	/* {"", "dwmblocks_input get",		10,		2}, */

	{"", "dwmblocks_volume &",		1,		1},

	{"", "date '+ %H:%M:%S' &",		1,		0},

	{"", "date '+ %a %d.%m' &",		10,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "  ";
static unsigned int delimLen = 5;
