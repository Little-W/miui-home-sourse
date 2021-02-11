.class public Lcom/miui/home/launcher/common/PreferenceUtils;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "PreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/PreferenceUtils$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "launcher_sharedpreference"

    .line 25
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/common/PreferenceUtils$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;-><init>()V

    return-void
.end method

.method public static commitInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putIntForce(Ljava/lang/String;I)V

    return-void
.end method

.method public static contains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 168
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 160
    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getIconSizeScaleDefaultValue()F
    .locals 2

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public static getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;
    .locals 1

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils$Holder;->access$100()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 144
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 124
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 140
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 180
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static moveAllSharedPreferenceToOneFile(Landroid/content/Context;)V
    .locals 2

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 89
    invoke-static {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 90
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->moveSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_world_readable_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->moveSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hybrid_pref"

    const-string v1, "hybrid_pref_"

    .line 92
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->moveSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IronSource"

    const-string v1, "IronSource_"

    .line 93
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->moveSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static moveSharedPreferenceForDirectBoot(Landroid/content/Context;)V
    .locals 3

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 79
    invoke-static {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_world_readable_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v1, "hybrid_pref_"

    .line 82
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v1, "IronSource_"

    .line 83
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private static moveSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_1
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 104
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 105
    :cond_2
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_3

    .line 106
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    goto :goto_0

    .line 107
    :cond_3
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 108
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 109
    :cond_4
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 110
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 111
    :cond_5
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 112
    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_6
    instance-of v2, v1, Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 114
    check-cast v1, Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 128
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static putFloat(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 0

    .line 156
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 120
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static putStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static removeKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->remove(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIconSizeScale()F
    .locals 1

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getIconSizeScale()F

    move-result v0

    return v0
.end method

.method public getIconSizeScaleFromSP()F
    .locals 3

    const-string v0, "icon_size_scale"

    .line 188
    invoke-direct {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScaleDefaultValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3f99999a    # 1.2f

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v0

    return v0
.end method

.method public getIgnoreAlignScreenList()Ljava/lang/String;
    .locals 2

    const-string v0, "ignore_align_screen_list"

    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSetDrawerModeEnable()Z
    .locals 1

    const-string v0, "is_all_apps_drawer_mode_enable"

    .line 204
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSetIconSizeScale()Z
    .locals 1

    const-string v0, "icon_size_scale"

    .line 192
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDrawerModeEnable()Z
    .locals 3

    .line 210
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetDrawerModeEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "is_all_apps_drawer_mode_enable"

    .line 211
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 213
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "miui_home_drawer_default_enable"

    .line 214
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public setDrawerModeEnable(Z)V
    .locals 1

    const-string v0, "is_all_apps_drawer_mode_enable"

    .line 219
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIconSizeScale(F)V
    .locals 1

    const-string v0, "icon_size_scale"

    .line 200
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setIgnoreAlignScreenList(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ignore_align_screen_list"

    .line 238
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setShouldAlignScreen(Z)V
    .locals 1

    const-string v0, "should_align_screen"

    .line 230
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldAlignScreen()Z
    .locals 2

    const-string v0, "should_align_screen"

    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
