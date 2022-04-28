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

    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method protected static addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.home.Setting"

    .line 131
    invoke-static {p0, p1, v0, p2}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.home.action.navigation_bar_type_settings"

    .line 118
    invoke-static {p0, p1, v0, p2}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.miui.home.recents.task_stack_view_layout_style"

    const-string v1, ""

    .line 114
    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string v0, "title"

    .line 123
    invoke-virtual {p0, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string v0, "summaryOn"

    .line 124
    invoke-static {p2, p1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->getSettingsSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string p1, "intentAction"

    .line 125
    invoke-virtual {p0, p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string p1, "iconResId"

    const p2, 0x7f0801ba

    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string p1, "keywords"

    .line 127
    invoke-virtual {p0, p1, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private static getSettingsSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100234

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.miui.home.action.ALL_APPS_SETTINGS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "com.miui.home.action.navigation_bar_type_settings"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "com.android.settings.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "com.miui.securitycenter.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v2, "com.miui.home.action.ICON_CUSTOMIZE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return-object v1

    .line 144
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f100307

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x44db3e29 -> :sswitch_4
        -0x1e06d36e -> :sswitch_3
        0x69a933b -> :sswitch_2
        0x6550a36b -> :sswitch_1
        0x675de0d8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$sendBroadcastForUpdateSearchResult$0(Landroid/content/Context;)V
    .locals 4

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.SEPARATE_APP_SEARCH_RESULT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.search.provider.UpdateReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "BaseSettingsSearchProvider"

    const-string v0, "sendBroadcastForUpdateSearchResult"

    .line 156
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendBroadcastForUpdateSearchResult(Landroid/content/Context;)V
    .locals 1

    .line 151
    new-instance v0, Lcom/miui/home/settings/-$$Lambda$BaseSettingsSearchProvider$y5eZ4xAzZ2uKygRP1FsXzduL-lw;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/-$$Lambda$BaseSettingsSearchProvider$y5eZ4xAzZ2uKygRP1FsXzduL-lw;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_0
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object p2, Lcom/miui/home/settings/BaseSettingsSearchProvider$SearchContract;->SEARCH_RESULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    sget-object p5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p4, p5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p4

    .line 56
    sget-boolean p5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p5, :cond_1

    .line 57
    sget-boolean p5, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    if-eqz p5, :cond_5

    const p5, 0x7f1003f5

    .line 58
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 61
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p5

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p5

    if-ne p5, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    const p5, 0x7f100322

    .line 64
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    if-eqz p4, :cond_4

    const v0, 0x7f100323

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    :goto_1
    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    const p5, 0x7f10026b

    .line 67
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p5, 0x7f100258

    .line 68
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p5

    if-nez p5, :cond_6

    const p5, 0x7f10039d

    .line 70
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const p5, 0x7f100329

    .line 72
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p5, 0x7f1003b8

    .line 73
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->isNoWordAvailable()Z

    move-result p5

    if-eqz p5, :cond_7

    const p5, 0x7f100278

    .line 75
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const p5, 0x7f100150

    .line 77
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, "com.miui.settings.HOME_SETTINGS_MIUI"

    const-string v1, ""

    invoke-static {p1, p5, v0, v1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p5, 0x7f10005a

    .line 78
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, "com.miui.home.action.ALL_APPS_SETTINGS"

    const-string v1, ""

    invoke-static {p1, p5, v0, v1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p5, 0x7f10023a

    .line 79
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, "com.miui.home.action.ICON_CUSTOMIZE"

    const-string v1, ""

    invoke-static {p1, p5, v0, v1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p2}, Lcom/miui/home/settings/MiuiHomeSettings;->getPrivacyThumbnailBlurAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_8

    const v0, 0x7f10034e

    .line 82
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, p5, v1}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_8
    invoke-static {p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseGestureVersion3(Landroid/content/Context;)Z

    move-result p5

    .line 85
    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->isShowSystemNavTypePreferenceInMiuiSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f100307

    .line 86
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_9

    .line 88
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f100308

    .line 86
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f100309

    .line 87
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f10030a

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f10030b

    .line 88
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    :cond_9
    const-string p4, ""

    .line 86
    :goto_3
    invoke-static {p1, v0, p4}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p4, 0x7f100306

    .line 89
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, ""

    invoke-static {p1, p4, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p4, 0x7f10030c

    .line 90
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, ""

    invoke-static {p1, p4, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p2}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_b

    const p2, 0x7f1001f2

    .line 92
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, ""

    invoke-static {p1, p2, p4}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_a

    const p2, 0x7f1002ec

    goto :goto_4

    :cond_a
    const p2, 0x7f1002d5

    .line 93
    :goto_4
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, ""

    invoke-static {p1, p2, p4}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    const p2, 0x7f1003f7

    .line 96
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, ""

    invoke-static {p1, p2, p4}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f100242

    .line 97
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "com.miui.home.action.navigation_bar_type_settings"

    const-string v0, ""

    invoke-static {p1, p2, p4, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f1000ab

    .line 98
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "com.miui.home.action.navigation_bar_type_settings"

    const-string v0, ""

    invoke-static {p1, p2, p4, v0}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz p2, :cond_c

    const p2, 0x7f100301

    .line 100
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, ""

    invoke-static {p1, p2, p4}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    if-eqz p5, :cond_d

    const p2, 0x7f10036c

    .line 105
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    const p2, 0x7f10036e

    .line 106
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    const p2, 0x7f10036d

    .line 107
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    :cond_d
    const p2, 0x7f10024a

    .line 109
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.miui.home.action.ALL_APPS_SETTINGS"

    const-string p4, ""

    invoke-static {p1, p2, p3, p4}, Lcom/miui/home/settings/BaseSettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
