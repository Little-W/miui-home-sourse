.class public Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;
.super Ljava/lang/Object;
.source "UpgradeLayoutItemFactory.java"


# static fields
.field private static COUNTS_DESKTOP_FAVORITE:I = 0x10

.field private static COUNTS_DESKTOP_FAVORITE_BEFORE_APPWIDGET:I = 0xc

.field private static favoriteCellXList:[I

.field private static favoriteCellYList:[I

.field private static favoriteClassNameList:[Ljava/lang/String;

.field private static favoritePackageNameList:[Ljava/lang/String;

.field private static favoriteScreenList:[I

.field private static layoutItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 42

    const/16 v0, 0x29

    new-array v1, v0, [I

    .line 17
    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteCellXList:[I

    new-array v1, v0, [I

    .line 21
    fill-array-data v1, :array_1

    sput-object v1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteCellYList:[I

    new-array v0, v0, [I

    .line 25
    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteScreenList:[I

    const-string v1, "com.xiaomi.shop.activity.MainTabActivity"

    const-string v2, "com.miui.video.HomeActivity"

    const-string v3, "com.xiaomi.gamecenter.ui.MainTabActivity"

    const-string v4, "com.xiaomi.market.ui.MarketTabActivity"

    const-string v5, "com.android.settings.MiuiSettings"

    const-string v6, "com.miui.gallery.activity.HomePageActivity"

    const-string v7, "com.miui.securityscan.MainActivity"

    const-string v8, "com.miui.notes.ui.NotesListActivity"

    const-string v9, "com.xiaomi.smarthome.SmartHomeMainActivity"

    const-string v10, "com.duokan.reader.DkReaderActivity"

    const-string v11, "com.xiaomi.vipaccount.ui.VipAccountActivity"

    const-string v12, "com.android.thememanager.ThemeResourceTabActivity"

    const-string v13, "com.mipay.wallet.ui.MipayEntryActivity"

    const-string v14, "com.xiaomi.youpin.activity.SplashActivity"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "com.miui.calculator.cal.CalculatorActivity"

    const-string v18, "com.android.fileexplorer.FileExplorerTabActivity"

    const-string v19, "com.android.calendar.homepage.AllInOneActivity"

    const-string v20, "com.android.email.activity.Welcome"

    const-string v21, "com.miui.huanji.MainActivity"

    const-string v22, "com.android.deskclock.DeskClockTabActivity"

    const-string v23, "com.android.soundrecorder.SoundRecorder"

    const-string v24, "com.miui.weather2.ActivityWeatherMain"

    const-string v25, "com.miui.player.ui.MusicBrowserActivity"

    const-string v26, "com.mi.health.home.HomeActivity"

    const-string v27, "cn.com.smartdevices.bracelet.activity.MainActivity"

    const-string v28, "com.miui.miservice.main.MainActivity"

    const-string v29, "com.android.contacts.activities.PeopleActivity"

    const-string v30, "com.miui.compass.CompassActivity"

    const-string v31, "com.xiaomi.scanner.app.ScanActivity"

    const-string v32, "com.android.providers.downloads.ui.DownloadList"

    const-string v33, "com.miui.voiceassist.CTAAlertActivity"

    const-string v34, "com.miui.virtualsim.ui.MainActivity"

    const-string v35, "com.miui.bugreport.ui.MainTabActivity"

    const-string v36, "com.miui.screenrecorder.activity.ScreenRecorderHomeActivity"

    const-string v37, "com.android.updater.MainActivity"

    const-string v38, "com.xiaomi.mitv.phone.remotecontroller.HoriWidgetMainActivityV2"

    const-string v39, "com.mi.misupport.activity.MainActivity"

    const-string v40, "com.xiaomi.tag.MiTagActivity"

    const-string v41, "com.mi.vtalk.business.activity.loginActivity"

    .line 29
    filled-new-array/range {v1 .. v41}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteClassNameList:[Ljava/lang/String;

    const-string v1, "com.xiaomi.shop"

    const-string v2, "com.miui.video"

    const-string v3, "com.xiaomi.gamecenter"

    const-string v4, "com.xiaomi.market"

    const-string v5, "com.android.settings"

    const-string v6, "com.miui.gallery"

    const-string v7, "com.miui.securitycenter"

    const-string v8, "com.miui.notes"

    const-string v9, "com.xiaomi.smarthome"

    const-string v10, "com.duokan.reader"

    const-string v11, "com.xiaomi.vipaccount"

    const-string v12, "com.android.thememanager"

    const-string v13, "com.mipay.wallet"

    const-string v14, "com.xiaomi.youpin"

    const-string v17, "com.miui.calculator"

    const-string v18, "com.android.fileexplorer"

    const-string v19, "com.android.calendar"

    const-string v20, "com.android.email"

    const-string v21, "com.miui.huanji"

    const-string v22, "com.android.deskclock"

    const-string v23, "com.android.soundrecorder"

    const-string v24, "com.miui.weather2"

    const-string v25, "com.miui.player"

    const-string v26, "com.mi.health"

    const-string v27, "com.xiaomi.hm.health"

    const-string v28, "com.miui.miservice"

    const-string v29, "com.android.contacts"

    const-string v30, "com.miui.compass"

    const-string v31, "com.xiaomi.scanner"

    const-string v32, "com.android.providers.downloads.ui"

    const-string v33, "com.miui.voiceassist"

    const-string v34, "com.miui.virtualsim"

    const-string v35, "com.miui.bugreport"

    const-string v36, "com.miui.screenrecorder"

    const-string v37, "com.android.updater"

    const-string v38, "com.duokan.phone.remotecontroller"

    const-string v39, "com.mi.misupport"

    const-string v40, "com.xiaomi.tag"

    const-string v41, "com.mi.vtalk"

    .line 75
    filled-new-array/range {v1 .. v41}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoritePackageNameList:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x2
        0x3
        0x0
        0x1
        0x2
        0x3
        0x0
        0x1
        0x0
        0x1
        0x2
        0x3
        0x2
        0x3
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static getLayoutItemInfos()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutNode;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->layoutItemInfos:Ljava/util/List;

    .line 123
    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->layoutItemInfos:Ljava/util/List;

    new-instance v15, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const-string v8, "com.miui.home:string/gadget_clock_label"

    const-string v9, "d7b7cf12-29ab-4cd6-afe5-f006d5112d48"

    const-string v10, "file:///system/media/theme/default/maml/maml_clock_4x2_new.mtz"

    const/16 v11, 0xc

    const/16 v12, 0xa0

    const-string v13, "ma_0220210813165003011950"

    const/4 v14, 0x0

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;-><init>(IIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->layoutItemInfos:Ljava/util/List;

    new-instance v15, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v8, "com.miui.home:string/gadget_weather_title"

    const-string v9, "b8006e83-c497-4642-9815-f674b82842b0"

    const-string v10, "file:///system/media/theme/default/maml/maml_weather_2x2_new.mtz"

    const/4 v11, 0x1

    const-string v13, "ma_0220210813165003011950"

    const-string v14, "com.miui.weather2"

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;-><init>(IIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->layoutItemInfos:Ljava/util/List;

    new-instance v9, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderItemInfo;

    const/4 v3, 0x2

    const-wide/16 v6, 0x1

    const-string v8, "com.miui.home:string/new_default_folder_title_tools"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderItemInfo;-><init>(IIIIJLjava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 142
    :goto_0
    sget v1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->COUNTS_DESKTOP_FAVORITE_BEFORE_APPWIDGET:I

    if-ge v0, v1, :cond_0

    .line 143
    sget-object v1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->layoutItemInfos:Ljava/util/List;

    new-instance v11, Lcom/miui/home/launcher/upgradelayout/UpgradeDesktopFavoriteInfo;

    sget-object v2, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteCellXList:[I

    aget v3, v2, v0

    sget-object v2, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteCellYList:[I

    aget v4, v2, v0

    sget-object v2, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteScreenList:[I

    aget v2, v2, v0

    int-to-long v5, v2

    const-wide/16 v7, -0x64

    sget-object v2, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteClassNameList:[Ljava/lang/String;

    aget-object v9, v2, v0

    sget-object v2, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoritePackageNameList:[Ljava/lang/String;

    aget-object v10, v2, v0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/miui/home/launcher/upgradelayout/UpgradeDesktopFavoriteInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->layoutItemInfos:Ljava/util/List;

    new-instance v15, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    const-wide/16 v8, -0x64

    const/4 v10, 0x0

    const/16 v13, 0xa0

    const-string v11, "com.miui.player.widget.MiuiHomeCapsuleWidget"

    const-string v12, "com.miui.player"

    const-string v14, "wd_0216668697221920600085"

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;-><init>(IIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->layoutItemInfos:Ljava/util/List;

    new-instance v15, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;

    const/4 v3, 0x1

    const-string v11, "com.mi.health.exercise.widget.StepRingWidgetProvider_2_1"

    const-string v12, "com.mi.health"

    const-string v14, "wd_0216584106741650601032"

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;-><init>(IIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    sget v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->COUNTS_DESKTOP_FAVORITE_BEFORE_APPWIDGET:I

    :goto_1
    sget v1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->COUNTS_DESKTOP_FAVORITE:I

    if-ge v0, v1, :cond_1

    .line 158
    sget-object v1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->layoutItemInfos:Ljava/util/List;

    new-instance v11, Lcom/miui/home/launcher/upgradelayout/UpgradeDesktopFavoriteInfo;

    sget-object v2, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteCellXList:[I

    aget v3, v2, v0

    sget-object v2, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteCellYList:[I

    aget v4, v2, v0

    sget-object v2, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteScreenList:[I

    aget v2, v2, v0

    int-to-long v5, v2

    const-wide/16 v7, -0x64

    sget-object v2, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteClassNameList:[Ljava/lang/String;

    aget-object v9, v2, v0

    sget-object v2, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoritePackageNameList:[Ljava/lang/String;

    aget-object v10, v2, v0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/miui/home/launcher/upgradelayout/UpgradeDesktopFavoriteInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_1
    :goto_2
    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteCellXList:[I

    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 162
    sget-object v2, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->layoutItemInfos:Ljava/util/List;

    new-instance v12, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;

    aget v4, v0, v1

    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteCellYList:[I

    aget v5, v0, v1

    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteScreenList:[I

    aget v0, v0, v1

    int-to-long v6, v0

    const-wide/16 v8, 0x0

    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoriteClassNameList:[Ljava/lang/String;

    aget-object v10, v0, v1

    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->favoritePackageNameList:[Ljava/lang/String;

    aget-object v11, v0, v1

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 165
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->layoutItemInfos:Ljava/util/List;

    return-object v0
.end method
