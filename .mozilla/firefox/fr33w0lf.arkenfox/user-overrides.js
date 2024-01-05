//
// arkenfox user.js overrides -- https://github.com/arkenfox/user.js
//

// 0102
user_pref("browser.startup.page", 1);
// 0103
user_pref("browser.startup.homepage", "about:home");
// 0104
user_pref("browser.newtabpage.enabled", true);
// 0306
user_pref("captivedetect.canonicalURL", "http://detectportal.firefox.com/canonical.html");
user_pref("network.captive-portal-service.enabled", true);
user_pref("network.connectivity-service.enabled", true);
// 0801
user_pref("keyword.enabled", true);
// 2022
user_pref("media.eme.enabled", true);
// 2651
user_pref("browser.download.useDownloadDir", true);
// 2811
user_pref("privacy.clearOnShutdown.history", false);
// 4501
user_pref("privacy.resistFingerprinting", false);
// 4504
user_pref("privacy.resistFingerprinting.letterboxing", false);
// 4520
user_pref("webgl.disabled", false);
// 5003
user_pref("signon.rememberSignons", false);
// 5008
user_pref("browser.sessionstore.resume_from_crash", false);
// 5009
user_pref("browser.download.forbid_open_with", true);
// 5017
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("extensions.formautofill.heuristics.enabled", false);
// 9000
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("ui.systemUsesDarkTheme", 1);

//
// FirefoxGX Theme -- https://github.com/Godiesc/firefox-gx
//

/* Default Rules */
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("svg.context-properties.content.enabled", true);
user_pref("layout.css.color-mix.enabled", true);
user_pref("browser.tabs.delayHidingAudioPlayingIconMS", 0);
user_pref("layout.css.backdrop-filter.enabled", true);
user_pref("browser.newtabpage.activity-stream.improvesearch.handoffToAwesomebar", false);

/* Make it all false if you don't want other forms of tabs than default */
user_pref("userChrome.tab.box_shadow", true);
user_pref("userChrome.tab.connect_to_window", true);
user_pref("userChrome.tab.bottom_rounded_corner.all", true);
user_pref("userChrome.tab.color_like_toolbar", true);
user_pref("userChrome.tab.multi_selected", true);
user_pref("userChrome.tab.bottom_rounded_corner", true);

/* Make it True (only one) the rule with the form of the tab you want */
user_pref("userChrome.tab.bottom_rounded_corner.wave", true);
user_pref("userChrome.tab.bottom_rounded_corner.australis", false);
user_pref("userChrome.tab.bottom_rounded_corner.chrome", false);
user_pref("userChrome.tab.bottom_rounded_corner.chrome_legacy", false);
user_pref("userChrome.tab.bottom_rounded_corner.edge", false);

//
// Personal Edits
//

// Disable Tab Manager
user_pref("browser.tabs.tabmanager.enabled", false);
