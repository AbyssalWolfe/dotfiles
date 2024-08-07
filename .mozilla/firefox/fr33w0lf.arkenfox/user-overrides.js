//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                              //
//  █████╗ ██████╗ ██╗  ██╗███████╗███╗   ██╗███████╗ ██████╗ ██╗  ██╗     ██████╗ ██╗   ██╗███████╗██████╗ ██████╗ ██╗██████╗ ███████╗███████╗ //
// ██╔══██╗██╔══██╗██║ ██╔╝██╔════╝████╗  ██║██╔════╝██╔═══██╗╚██╗██╔╝    ██╔═══██╗██║   ██║██╔════╝██╔══██╗██╔══██╗██║██╔══██╗██╔════╝██╔════╝ //
// ███████║██████╔╝█████╔╝ █████╗  ██╔██╗ ██║█████╗  ██║   ██║ ╚███╔╝     ██║   ██║██║   ██║█████╗  ██████╔╝██████╔╝██║██║  ██║█████╗  ███████╗ //
// ██╔══██║██╔══██╗██╔═██╗ ██╔══╝  ██║╚██╗██║██╔══╝  ██║   ██║ ██╔██╗     ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗██╔══██╗██║██║  ██║██╔══╝  ╚════██║ //
// ██║  ██║██║  ██║██║  ██╗███████╗██║ ╚████║██║     ╚██████╔╝██╔╝ ██╗    ╚██████╔╝ ╚████╔╝ ███████╗██║  ██║██║  ██║██║██████╔╝███████╗███████║ //
// ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝╚═╝      ╚═════╝ ╚═╝  ╚═╝     ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═════╝ ╚══════╝╚══════╝ //
//                                                                                                                                              //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                     https://github.com/arkenfox/user.js                                                      //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// 0102
user_pref("browser.startup.page", 1);
// 0103
user_pref("browser.startup.homepage", "https://start.duckduckgo.com")
// 0104
user_pref("browser.newtabpage.enabled", true);
// 2651
user_pref("browser.download.useDownloadDir", true);
// 2654
user_pref("browser.download.always_ask_before_handling_new_types", false);
// 4501
user_pref("privacy.resistFingerprinting", false);
// 4504
user_pref("privacy.resistFingerprinting.letterboxing", false);
// 5003
user_pref("signon.rememberSignons", false);
// 5008
user_pref("browser.sessionstore.resume_from_crash", false);
// 5009
user_pref("browser.download.forbid_open_with", true);
// 5017
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
// 5019
user_pref("browser.pagethumbnails.capturing_disabled", true);
// 9000
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                             //
// ██████╗ ███████╗██████╗ ███████╗ ██████╗ ███╗   ██╗ █████╗ ██╗         ███████╗██████╗ ██╗████████╗███████╗ //
// ██╔══██╗██╔════╝██╔══██╗██╔════╝██╔═══██╗████╗  ██║██╔══██╗██║         ██╔════╝██╔══██╗██║╚══██╔══╝██╔════╝ //
// ██████╔╝█████╗  ██████╔╝███████╗██║   ██║██╔██╗ ██║███████║██║         █████╗  ██║  ██║██║   ██║   ███████╗ //
// ██╔═══╝ ██╔══╝  ██╔══██╗╚════██║██║   ██║██║╚██╗██║██╔══██║██║         ██╔══╝  ██║  ██║██║   ██║   ╚════██║ //
// ██║     ███████╗██║  ██║███████║╚██████╔╝██║ ╚████║██║  ██║███████╗    ███████╗██████╔╝██║   ██║   ███████║ //
// ╚═╝     ╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝    ╚══════╝╚═════╝ ╚═╝   ╚═╝   ╚══════╝ //
//                                                                                                             //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Disable Tab Manager
user_pref("browser.tabs.tabmanager.enabled", false);

// Disable Firefox View
user_pref("browser.tabs.firefox-view", false);

// Disable warning on Ctrl+Q
user_pref("browser.warnOnQuitShortcut", false);

// Disable Pocket
user_pref("extensions.pocket.enabled", false);
