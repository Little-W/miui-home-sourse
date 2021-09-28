.class public Lcom/miui/home/settings/SettingsSearchProvider;
.super Landroid/content/ContentProvider;
.source "SettingsSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/SettingsSearchProvider$SearchContract;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.home.Setting"

    .line 97
    invoke-static {p0, p1, v0, p2}, Lcom/miui/home/settings/SettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.home.action.navigation_bar_type_settings"

    .line 93
    invoke-static {p0, p1, v0, p2}, Lcom/miui/home/settings/SettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.miui.home.recents.task_stack_view_layout_style"

    const-string v1, ""

    .line 89
    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/settings/SettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string v0, "title"

    .line 102
    invoke-virtual {p0, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string v0, "summaryOn"

    .line 103
    invoke-static {p2, p1}, Lcom/miui/home/settings/SettingsSearchProvider;->getSettingsSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string p1, "intentAction"

    .line 104
    invoke-virtual {p0, p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string p1, "iconResId"

    const p2, 0x7f080168

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string p1, "keywords"

    .line 106
    invoke-virtual {p0, p1, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private static getSettingsSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001ec

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
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

    .line 119
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f10028d

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
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

    .line 38
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object p2, Lcom/miui/home/settings/SettingsSearchProvider$SearchContract;->SEARCH_RESULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/settings/SettingsSearchProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    sget-object p5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p4, p5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p4

    .line 43
    sget-boolean p5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p5, :cond_0

    .line 44
    sget-boolean p5, Lcom/miui/home/launcher/DeviceConfig;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    if-eqz p5, :cond_4

    const p5, 0x7f10035b

    .line 45
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/SettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p5

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p5

    if-ne p5, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v1, :cond_4

    const p5, 0x7f1002a5

    .line 51
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    if-eqz p4, :cond_3

    const v0, 0x7f1002a6

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    :goto_1
    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/SettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    const p5, 0x7f100216

    .line 54
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/SettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p5, 0x7f10020c

    .line 55
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/SettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p5, 0x7f10030b

    .line 56
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/SettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p5, 0x7f1002a9

    .line 57
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/SettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p5, 0x7f100323

    .line 58
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-static {p1, p5, v0}, Lcom/miui/home/settings/SettingsSearchProvider;->addMiuiHomeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p5, 0x7f100118

    .line 59
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, "com.miui.settings.HOME_SETTINGS_MIUI"

    const-string v1, ""

    invoke-static {p1, p5, v0, v1}, Lcom/miui/home/settings/SettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p5, 0x7f100056

    .line 60
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, "com.miui.home.action.ALL_APPS_SETTINGS"

    const-string v1, ""

    invoke-static {p1, p5, v0, v1}, Lcom/miui/home/settings/SettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p5, 0x7f1001f2

    .line 61
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, "com.miui.home.action.ICON_CUSTOMIZE"

    const-string v1, ""

    invoke-static {p1, p5, v0, v1}, Lcom/miui/home/settings/SettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p2}, Lcom/miui/home/settings/MiuiHomeSettings;->getPrivacyThumbnailBlurAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_5

    const v0, 0x7f1002cd

    .line 64
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, p5, v1}, Lcom/miui/home/settings/SettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_5
    invoke-static {p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseGestureVersion3(Landroid/content/Context;)Z

    move-result p5

    .line 67
    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->isShowSystemNavTypePreferenceInMiuiSettings(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8

    const p2, 0x7f10028d

    .line 68
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_6

    .line 70
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f10028e

    .line 68
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f10028f

    .line 69
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f100290

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f100291

    .line 70
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    :cond_6
    const-string p4, ""

    .line 68
    :goto_3
    invoke-static {p1, p2, p4}, Lcom/miui/home/settings/SettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f100292

    .line 71
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, ""

    invoke-static {p1, p2, p4}, Lcom/miui/home/settings/SettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f10028c

    .line 72
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, ""

    invoke-static {p1, p2, p4}, Lcom/miui/home/settings/SettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f10035d

    .line 73
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, ""

    invoke-static {p1, p2, p4}, Lcom/miui/home/settings/SettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f1001b3

    .line 74
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, ""

    invoke-static {p1, p2, p4}, Lcom/miui/home/settings/SettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_7

    const p2, 0x7f100285

    goto :goto_4

    :cond_7
    const p2, 0x7f100277

    .line 75
    :goto_4
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, ""

    invoke-static {p1, p2, p4}, Lcom/miui/home/settings/SettingsSearchProvider;->addNavBarTypeSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz p5, :cond_9

    const p2, 0x7f1002df

    .line 80
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/settings/SettingsSearchProvider;->addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    const p2, 0x7f1002e1

    .line 81
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/settings/SettingsSearchProvider;->addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    const p2, 0x7f1002e0

    .line 82
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/settings/SettingsSearchProvider;->addRecentLayoutStyleSettingsSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    :cond_9
    const p2, 0x7f100201

    .line 84
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.miui.home.action.ALL_APPS_SETTINGS"

    const-string p4, ""

    invoke-static {p1, p2, p3, p4}, Lcom/miui/home/settings/SettingsSearchProvider;->addSearchItem(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
