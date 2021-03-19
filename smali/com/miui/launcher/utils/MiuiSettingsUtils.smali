.class public Lcom/miui/launcher/utils/MiuiSettingsUtils;
.super Ljava/lang/Object;
.source "MiuiSettingsUtils.java"


# static fields
.field public static final CURRENT_LIVE_WALLPAPER_PACKAGENAME:Ljava/lang/String; = "current_live_wallpaper_packagename"

.field public static final FORCE_FSG_NAV_BAR:Ljava/lang/String; = "force_fsg_nav_bar"

.field public static final FORCE_IMMERSIVE_NAV_BAR:Ljava/lang/String; = "force_immersive_nav_bar"

.field public static final FSG_CLOUD_DATA_KEY:Ljava/lang/String; = "ykrq"

.field public static final FSG_KEY_HOT_ZONE:Ljava/lang/String; = "hot_zone_change"

.field public static final FSG_KEY_NO_BACK:Ljava/lang/String; = "no_back_gesture_only"

.field public static final FSG_KEY_NO_BACK_AND_HOME:Ljava/lang/String; = "no_back_and_home"

.field public static final FSG_KEY_NO_HOME:Ljava/lang/String; = "no_home_gesture_only"

.field public static final IS_DEFAULT_ICON:Ljava/lang/String; = "is_default_icon"

.field public static final KEY_MIUI_MOD_ICON_ENABLE:Ljava/lang/String; = "key_miui_mod_icon_enable"

.field public static final KEY_SYSTEM_ANIMATION_STATUS:Ljava/lang/String; = "animate_settings_status"

.field public static final LAUNCHER_STATE:Ljava/lang/String; = "launcher_state"

.field public static final LOCK_WALLPAPER_PROVIDER_AUTHORITY:Ljava/lang/String; = "lock_wallpaper_provider_authority"

.field public static final MIUI_HOME_ENABLE_AUTO_FILL_EMPTY_CELLS:Ljava/lang/String; = "miui_home_enable_auto_fill_empty_cells"

.field public static final MIUI_HOME_LOCK_SCREEN_CELLS:Ljava/lang/String; = "miui_home_lock_screen_cells"

.field public static final MIUI_HOME_SCREEN_CELLS_SIZE:Ljava/lang/String; = "miui_home_screen_cells_size"

.field public static final MIUI_RECENTS_SHOW_MEM_INFO:Ljava/lang/String; = "miui_recents_show_mem_info"

.field public static final MIUI_RECENTS_SHOW_RECOMMEND:Ljava/lang/String; = "miui_recents_show_recommend"

.field public static final POWERMODE_SUPERSAVE_OPEN:Ljava/lang/String; = "power_supersave_mode_open"

.field public static final SHOW_GESTURE_APPSWITCH_FEATURE:Ljava/lang/String; = "show_gesture_appswitch_feature"

.field public static final URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

.field public static final USE_LAUNCHER_RECENTS_AND_FULLSCREEN_GESTURE:Ljava/lang/String; = "use_gesture_version_three"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/notify"

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/launcher/utils/MiuiSettingsUtils;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 111
    invoke-static {p0, p1, v0, v1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, -0x2

    .line 115
    invoke-static {p0, p1, p2, v0}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static getBooleanFromFeatureParse(Ljava/lang/String;Z)Z
    .locals 0

    .line 90
    invoke-static {p0, p1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    .line 82
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getCloudDataBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getCloudDataLong(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 0

    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataLong(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p0, p1, p2, p3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFloatFromFeatureParse(Ljava/lang/String;F)F
    .locals 0

    .line 94
    invoke-static {p0, p1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 0

    .line 59
    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getIntFromSystemProperties(Ljava/lang/String;I)I
    .locals 0

    .line 98
    invoke-static {p0, p1}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 102
    invoke-static {p0, p1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemAnimationObserverUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "animate_settings_status"

    .line 132
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemAnimationStatus(Landroid/content/Context;)I
    .locals 3

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "animate_settings_status"

    const-string v1, "default_close_unlock_animator"

    const/4 v2, 0x0

    .line 128
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 127
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isEnabledForceTouch(Landroid/content/Context;)Z
    .locals 0

    .line 78
    invoke-static {p0}, Landroid/provider/MiuiSettings$ForceTouch;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSystemAnimationOpen(Landroid/content/Context;)Z
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getSystemAnimationStatus(Landroid/content/Context;)I

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

    .line 107
    invoke-static {p0, p1, p2, v0}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return-void
.end method

.method public static putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    .line 74
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    .line 69
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 0

    .line 119
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 64
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
