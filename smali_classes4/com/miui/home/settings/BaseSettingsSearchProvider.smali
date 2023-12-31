.class public Lcom/miui/home/settings/BaseSettingsSearchProvider;
.super Landroid/content/ContentProvider;
.source "BaseSettingsSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/BaseSettingsSearchProvider$SearchContract;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method protected static addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.home.Setting"

    .line 154
    invoke-static {p0, p1, v0, p2}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.home.action.navigation_bar_type_settings"

    .line 141
    invoke-static {p0, p1, v0, p2}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.miui.home.recents.task_stack_view_layout_style"

    const-string v1, ""

    .line 137
    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 145
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string v0, "title"

    .line 146
    invoke-virtual {p0, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    .line 147
    invoke-static {p2, p1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->getSettingsSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "summaryOn"

    invoke-virtual {p0, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string p1, "intentAction"

    .line 148
    invoke-virtual {p0, p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const p1, 0x7f0802af

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "iconResId"

    invoke-virtual {p0, p2, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string p1, "keywords"

    .line 150
    invoke-virtual {p0, p1, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private static getSettingsSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 158
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11024f

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.miui.home.action.ALL_APPS_SETTINGS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "com.miui.home.action.navigation_bar_type_settings"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "com.miui.home.action.LAUNCHER_PERSONAL_ASSISTANT_SETTING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "com.android.settings.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "com.miui.securitycenter.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "com.miui.home.action.ICON_CUSTOMIZE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v2, "com.miui.home.recents.task_stack_view_layout_style"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const v2, 0x7f1103f7

    const-string v3, "/"

    packed-switch p0, :pswitch_data_0

    return-object v1

    .line 171
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f11037b

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 167
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 164
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x474d35c7 -> :sswitch_6
        -0x44db3e29 -> :sswitch_5
        -0x1e06d36e -> :sswitch_4
        0x69a933b -> :sswitch_3
        0x382defb5 -> :sswitch_2
        0x6550a36b -> :sswitch_1
        0x675de0d8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$sendBroadcastForUpdateSearchResult$0(Landroid/content/Context;)V
    .locals 4

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.SEPARATE_APP_SEARCH_RESULT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.search.provider.UpdateReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "BaseSettingsSearchProvider"

    const-string v0, "sendBroadcastForUpdateSearchResult"

    .line 183
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendBroadcastForUpdateSearchResult(Landroid/content/Context;)V
    .locals 1

    .line 178
    new-instance v0, Lcom/miui/home/settings/-$$Lambda$BaseSettingsSearchProvider$y5eZ4xAzZ2uKygRP1FsXzduL-lw;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/-$$Lambda$BaseSettingsSearchProvider$y5eZ4xAzZ2uKygRP1FsXzduL-lw;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_0
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object p2, Lcom/miui/home/settings/BaseSettingsSearchProvider$SearchContract;->SEARCH_RESULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    sget-object p4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 62
    sget-boolean p4, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string p5, ""

    if-eqz p4, :cond_1

    .line 63
    sget-boolean p4, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    if-eqz p4, :cond_5

    const p4, 0x7f110488

    .line 64
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p4

    if-eq p4, v1, :cond_3

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantInstalled()Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    const p4, 0x7f1103a1

    .line 71
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_4

    const v0, 0x7f1103a2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, p5

    :goto_1
    invoke-static {p1, p4, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    const p4, 0x7f1102b5

    .line 74
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p4, 0x7f11027f

    .line 75
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p4

    if-nez p4, :cond_6

    const p4, 0x7f11042a

    .line 77
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->supportSetAnimationRate()Z

    move-result p4

    if-eqz p4, :cond_7

    const p4, 0x7f110061

    .line 80
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const p4, 0x7f110449

    .line 82
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "com.miui.home.recents.task_stack_view_layout_style"

    invoke-static {p1, p4, v0, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->isNoWordAvailable()Z

    move-result p4

    if-eqz p4, :cond_8

    const p4, 0x7f1102c2

    .line 84
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const p4, 0x7f11005c

    .line 86
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "com.miui.home.action.ALL_APPS_SETTINGS"

    invoke-static {p1, p4, v0, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getPrivacyThumbnailBlurAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    .line 88
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz p4, :cond_9

    const v1, 0x7f1103d4

    .line 89
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p4, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_9
    invoke-static {p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseGestureVersion3(Landroid/content/Context;)Z

    move-result p4

    .line 92
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isShowSystemNavTypePreferenceInMiuiSettings(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x7f11037b

    .line 93
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_a

    .line 95
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11037c

    .line 93
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f11037d

    .line 94
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f11037e

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f11037f

    .line 95
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_a
    move-object p3, p5

    .line 93
    :goto_3
    invoke-static {p1, v1, p3}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f11037a

    .line 96
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f110380

    .line 97
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_c

    const p3, 0x7f110213

    .line 99
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_b

    const p3, 0x7f110360

    goto :goto_4

    :cond_b
    const p3, 0x7f110349

    .line 100
    :goto_4
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-boolean p3, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-eqz p3, :cond_d

    invoke-static {}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->getInstance()Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->isSupportGoogleAssist()Z

    move-result p3

    if-eqz p3, :cond_d

    const p3, 0x7f110211

    .line 103
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const p3, 0x7f11048b

    .line 106
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f110267

    .line 107
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "com.miui.home.action.navigation_bar_type_settings"

    invoke-static {p1, p3, v1, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f1100ab

    .line 108
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v1, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-boolean p3, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz p3, :cond_d

    const p3, 0x7f110375

    .line 110
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_d
    :goto_5
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result p3

    if-nez p3, :cond_e

    if-eqz p4, :cond_e

    const p3, 0x7f1103f7

    .line 115
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    const p3, 0x7f1103f9

    .line 116
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    const p3, 0x7f1103f8

    .line 117
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 119
    :cond_e
    sget-boolean p3, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    if-eqz p3, :cond_f

    const p3, 0x7f110251

    .line 120
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "com.miui.home.action.LAUNCHER_PERSONAL_ASSISTANT_SETTING"

    invoke-static {p1, p3, p4, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const p3, 0x7f110271

    .line 122
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result p3

    if-eqz p3, :cond_10

    const p3, 0x7f11026c

    .line 125
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const p3, 0x7f110051

    .line 128
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v0, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f110057

    .line 129
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v0, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isNeedRemoveEasyMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_11

    const p0, 0x7f110058

    .line 131
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0, p5}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
