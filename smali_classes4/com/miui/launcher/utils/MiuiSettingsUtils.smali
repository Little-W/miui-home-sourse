.class public Lcom/miui/launcher/utils/MiuiSettingsUtils;
.super Ljava/lang/Object;
.source "MiuiSettingsUtils.java"


# static fields
.field public static final CURRENT_LIVE_WALLPAPER_PACKAGENAME:Ljava/lang/String; = "current_live_wallpaper_packagename"

.field public static final DEFAULT_APP_DELETE_SOUND_IS_ON:Ljava/lang/String; = "default_app_delete_sound_is_on"

.field public static final FORCE_FSG_NAV_BAR:Ljava/lang/String; = "force_fsg_nav_bar"

.field public static final FORCE_IMMERSIVE_NAV_BAR:Ljava/lang/String; = "force_immersive_nav_bar"

.field public static final FSG_CLOUD_DATA_KEY:Ljava/lang/String; = "ykrq"

.field public static final FSG_KEY_NO_BACK:Ljava/lang/String; = "no_back_gesture_only"

.field public static final FSG_KEY_NO_BACK_AND_HOME:Ljava/lang/String; = "no_back_and_home"

.field public static final FSG_KEY_NO_HOME:Ljava/lang/String; = "no_home_gesture_only"

.field public static final GOOGLE_ASSIST_ENABLE:Ljava/lang/String; = "google_assist_enable"

.field public static final IS_DEFAULT_ICON:Ljava/lang/String; = "is_default_icon"

.field public static final KEY_GESTURE_HOME_ANIMATOR:Ljava/lang/String; = "gesture_home_animator"

.field public static final KEY_LAUNCHER_SEARCH_ICON_STATUS:Ljava/lang/String; = "launcher_search_icon_status"

.field public static final KEY_LOCK_SCREEN_MODE:Ljava/lang/String; = "lock_screen_mode"

.field public static final KEY_MIUI_MOD_ICON_ENABLE:Ljava/lang/String; = "key_miui_mod_icon_enable"

.field public static final KEY_MONOCHROME:Ljava/lang/String; = "key_monochrome"

.field public static final KEY_MONOCHROME_COLOR:Ljava/lang/String; = "key_monochrome_color"

.field public static final KEY_SCREEN_ZOOM_LEVEL:Ljava/lang/String; = "key_screen_zoom_level"

.field public static final KEY_SYSTEM_ANIMATION_STATUS:Ljava/lang/String; = "animate_settings_status"

.field public static final LAUNCHER_APP_DELETE_SOUND_EFFECT:Ljava/lang/String; = "launcher_app_delete_sound_effect"

.field public static final LAUNCHER_STATE:Ljava/lang/String; = "launcher_state"

.field public static final LOCK_WALLPAPER_PROVIDER_AUTHORITY:Ljava/lang/String; = "lock_wallpaper_provider_authority"

.field public static final MIUI_HOME_ENABLE_AUTO_FILL_EMPTY_CELLS:Ljava/lang/String; = "miui_home_enable_auto_fill_empty_cells"

.field public static final MIUI_HOME_LOCK_SCREEN_CELLS:Ljava/lang/String; = "miui_home_lock_screen_cells"

.field public static final MIUI_HOME_NO_WORD_MODEL:Ljava/lang/String; = "miui_home_no_word_model"

.field public static final MIUI_HOME_ONLY_WIDGET_NO_WORD_MODEL:Ljava/lang/String; = "miui_home_only_widget_no_word_model"

.field public static final MIUI_HOME_SCREEN_CELLS_SIZE:Ljava/lang/String; = "miui_home_screen_cells_size"

.field public static final MIUI_RECENTS_SHOW_MEM_INFO:Ljava/lang/String; = "miui_recents_show_mem_info"

.field public static final NAVIGATION_MODE:Ljava/lang/String; = "navigation_mode"

.field public static final NAVIGATION_MODE_GESTURE:Ljava/lang/String; = "2"

.field public static final POWERMODE_SUPERSAVE_OPEN:Ljava/lang/String; = "power_supersave_mode_open"

.field public static final PRE_KEY_HOME_SCREEN_SEARCH_BAR_ANALY_TEST_CODE:Ljava/lang/String; = "key_home_screen_search_bar_analy_test_code"

.field public static final PRE_KEY_HOME_SCREEN_SEARCH_BAR_CLICK_TARGET:Ljava/lang/String; = "key_home_screen_search_bar_click_target"

.field public static final PRE_KEY_HOME_SCREEN_SEARCH_BAR_ENGINE_CHAIN_RESOURCE:Ljava/lang/String; = "key_home_screen_search_bar_engine_chain_resource"

.field public static final PRE_KEY_HOME_SCREEN_SEARCH_BAR_SHOW_INITIATE:Ljava/lang/String; = "key_home_screen_search_bar_show_initiate"

.field public static final PRE_KEY_HOME_SCREEN_SEARCH_BAR_TEST_CODE:Ljava/lang/String; = "key_home_screen_search_bar_test_code"

.field public static final SCREEN_COLOR_SPACE_MODE:Ljava/lang/String; = "color_space_mode"

.field public static final SCREEN_OPTIMIZE_MODE:Ljava/lang/String; = "screen_optimize_mode"

.field public static final SCREEN_ZOOM_LEVEL_LARGE:I = 0x2

.field public static final SCREEN_ZOOM_LEVEL_NORMAL:I = 0x1

.field public static final SCREEN_ZOOM_LEVEL_SMALL:I = 0x0

.field public static final SECURITY_SPACE_SHOW_GUIDE:Ljava/lang/String; = "has_show_guide"

.field public static final SHOW_GESTURE_APPSWITCH_FEATURE:Ljava/lang/String; = "show_gesture_appswitch_feature"

.field public static final URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

.field public static final USE_LAUNCHER_RECENTS_AND_FULLSCREEN_GESTURE:Ljava/lang/String; = "use_gesture_version_three"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/notify"

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/launcher/utils/MiuiSettingsUtils;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessibilityDisplaySize(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "key_screen_zoom_level"

    const/4 v1, -0x1

    .line 219
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 149
    invoke-static {p0, p1, v0, v1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    .line 153
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static getBooleanFromFeatureParse(Ljava/lang/String;Z)Z
    .locals 0

    .line 124
    invoke-static {p0, p1}, Lcom/miui/launcher/utils/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    .line 116
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBooleanFromSystemProperties(Ljava/lang/String;Z)Z
    .locals 0

    .line 140
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getCloudDataBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 70
    invoke-static {p0, p1, p2, p3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getCloudDataLong(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 0

    .line 75
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataLong(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-static {p0, p1, p2, p3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFloatFromFeatureParse(Ljava/lang/String;F)F
    .locals 0

    .line 128
    invoke-static {p0, p1}, Lcom/miui/launcher/utils/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 0

    .line 84
    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0

    .line 157
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getIntFromSystemProperties(Ljava/lang/String;I)I
    .locals 0

    .line 132
    invoke-static {p0, p1}, Lcom/miui/launcher/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSearchBarEngineResource(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_engine_chain_resource"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarShowInitiate(Landroid/content/Context;)Z
    .locals 2

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "key_home_screen_search_bar_show_initiate"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static getSecureBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    .line 88
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 120
    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 136
    invoke-static {p0, p1}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemAnimationObserverUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "animate_settings_status"

    .line 178
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemAnimationStatus(Landroid/content/Context;Z)I
    .locals 1

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "default_close_unlock_animator"

    .line 174
    invoke-static {v0, p1}, Lcom/miui/launcher/utils/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "animate_settings_status"

    .line 173
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isDeleteSoundEffectEnable(Landroid/content/Context;)Z
    .locals 4

    .line 205
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "default_app_delete_sound_is_on"

    const-string v2, "bool"

    const-string v3, "android.miui"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 206
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    .line 210
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string v2, "launcher_app_delete_sound_effect"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static isEnabledForceTouch(Landroid/content/Context;)Z
    .locals 0

    .line 112
    invoke-static {p0}, Landroid/provider/MiuiSettings$ForceTouch;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isMiuiOptOn(Landroid/content/ContentResolver;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "miui_optimization"

    .line 215
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSystemAnimationOpen(Landroid/content/Context;Z)Z
    .locals 0

    .line 169
    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getSystemAnimationStatus(Landroid/content/Context;Z)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static putBooleanToCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, -0x2

    .line 145
    invoke-static {p0, p1, p2, v0}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return-void
.end method

.method public static putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    .line 108
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 0

    .line 165
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 0

    .line 161
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 94
    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 98
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setSearchBarAnalyTestCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_analy_test_code"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_click_target"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setSearchBarTestCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_test_code"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
