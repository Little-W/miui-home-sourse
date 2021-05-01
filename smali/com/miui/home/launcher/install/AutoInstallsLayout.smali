.class public Lcom/miui/home/launcher/install/AutoInstallsLayout;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$AutoInstallParser;,
        Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;
    }
.end annotation


# instance fields
.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mColumnCount:I

.field private final mContext:Landroid/content/Context;

.field private final mLayoutIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRootTag:Ljava/lang/String;

.field private final mRowCount:I

.field private mSerialNumber:J

.field private final mSourceRes:Landroid/content/res/Resources;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetHost;",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mContext:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 161
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    .line 162
    iput-object p5, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    .line 165
    iput-object p4, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mLayoutIds:Ljava/util/List;

    .line 167
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mRowCount:I

    .line 168
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mColumnCount:I

    .line 170
    iget-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    .line 171
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSerialNumber:J

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/util/ArrayMap;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getFolderElementsMap()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/content/res/Resources;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/appwidget/AppWidgetHost;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p0
.end method

.method static synthetic access$900(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Landroid/appwidget/AppWidgetHost;)J
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->parseGadget(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide p0

    return-wide p0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 7

    .line 365
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 366
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iget-object v2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    return-wide p1
.end method

.method private static beginDocument(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_4

    .line 601
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "defaultScreen"

    .line 602
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 603
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 604
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->setDefaultScreen(J)V

    const-string v0, "AutoInstalls"

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, "ignoreAlign"

    .line 607
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 608
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 609
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIgnoreAlignScreenList(Ljava/lang/String;)V

    const-string p1, "AutoInstalls"

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set ignore align screen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 613
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected start tag: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 618
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    add-int/2addr p1, v0

    .line 621
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/AutoInstallsLayout;
    .locals 2

    .line 55
    invoke-static {p2}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string p0, "AutoInstalls"

    const-string p1, "not support elderly mode layout"

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 59
    :cond_0
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    if-eq p2, v1, :cond_1

    const-string p0, "AutoInstalls"

    const-string p1, "not support other userId"

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string p2, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/miui/home/launcher/install/PlayAutoInstallHelper;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "AutoInstalls"

    const-string p1, "not found pai config apk"

    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 69
    :cond_2
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/content/res/Resources;

    invoke-static {p0, v0, p2, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;)Lcom/miui/home/launcher/install/AutoInstallsLayout;

    move-result-object p0

    return-object p0
.end method

.method private static get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;)Lcom/miui/home/launcher/install/AutoInstallsLayout;
    .locals 7

    .line 73
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "default_layout_%dx%d_h%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 73
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xml"

    .line 75
    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AutoInstalls"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Formatted layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found. Trying layout without hosteat"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "default_layout_%dx%d"

    new-array v2, v6, [Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 79
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xml"

    .line 81
    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "AutoInstalls"

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Formatted layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found. Trying the default layout"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "default_layout"

    const-string v1, "xml"

    .line 86
    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    const-string p0, "AutoInstalls"

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Layout definition not found in package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_2
    new-instance p1, Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "workspace"

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/install/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method

.method private static getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res-auto/com.miui.home"

    .line 644
    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    .line 648
    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res-auto/com.miui.home"

    .line 632
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 634
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getFolderElementsMap()Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "appicon"

    .line 284
    new-instance v2, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "autoinstall"

    .line 285
    new-instance v2, Lcom/miui/home/launcher/install/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout$AutoInstallParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shortcut"

    .line 286
    new-instance v2, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;

    iget-object v3, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "market_auto_install"

    .line 287
    new-instance v2, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;

    iget-object v3, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getLayoutElementsMap()Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "appicon"

    .line 293
    new-instance v2, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "autoinstall"

    .line 294
    new-instance v2, Lcom/miui/home/launcher/install/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout$AutoInstallParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "folder"

    .line 295
    new-instance v2, Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appwidget"

    .line 296
    new-instance v2, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Lcom/miui/home/launcher/install/AutoInstallsLayout$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shortcut"

    .line 297
    new-instance v2, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;

    iget-object v3, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private parseAndAddNode(Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "include"

    .line 217
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string p2, "workspace"

    .line 218
    invoke-static {p1, p2, v1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 221
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->parseLayout(ILandroid/database/sqlite/SQLiteDatabase;)I

    move-result p1

    return p1

    :cond_0
    return v1

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    const-string v0, "hotseat"

    const-string v2, "container"

    .line 229
    invoke-static {p1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v2, -0x65

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v4, "cellX"

    const-string v5, "rank"

    .line 232
    invoke-static {p1, v5}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mColumnCount:I

    invoke-static {v5, v6}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0x64

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v4, "screen"

    const-string v5, "screen"

    .line 236
    invoke-static {p1, v5}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 235
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v4, "cellX"

    const-string v5, "x"

    .line 238
    invoke-static {p1, v5}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mColumnCount:I

    invoke-static {v5, v6}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v4, "cellY"

    const-string v5, "y"

    .line 240
    invoke-static {p1, v5}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mRowCount:I

    invoke-static {v5, v6}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v4, "container"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v2, "profileId"

    iget-wide v3, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSerialNumber:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;

    if-nez p2, :cond_3

    const-string p1, "AutoInstalls"

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring unknown element tag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {p2, p1, p3, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-ltz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method private static parseGadget(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Landroid/appwidget/AppWidgetHost;)J
    .locals 3

    const-string v0, "AutoInstalls"

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseGadget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 511
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "clock3x4"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "clock2x4"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "clock1x4"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "google_original_search"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "google_search"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "mtz"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "search"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p3, "uri"

    .line 525
    invoke-static {p0, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 523
    :pswitch_1
    invoke-static {p1, p2, p4}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addGoogleOriginalSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide p0

    return-wide p0

    :pswitch_2
    const/16 p0, 0xd

    .line 521
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0

    .line 519
    :pswitch_3
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    .line 517
    :pswitch_4
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClock3x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    .line 515
    :pswitch_5
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClock2x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    .line 513
    :pswitch_6
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClock1x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_1
    const-wide/16 p0, -0x1

    return-wide p0

    :sswitch_data_0
    .sparse-switch
        -0x36059a58 -> :sswitch_6
        0x1a7b3 -> :sswitch_5
        0x1994426e -> :sswitch_4
        0x275c7dd0 -> :sswitch_3
        0x4043c7df -> :sswitch_2
        0x4043cba0 -> :sswitch_1
        0x4043cf61 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseLayout(ILandroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->beginDocument(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 197
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 199
    invoke-direct {p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getLayoutElementsMap()Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x0

    .line 202
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 203
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_2

    :cond_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->parseAndAddNode(Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public getRemoteLayoutSystemCreatedFolderTitles()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mLayoutIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 261
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getRemoteLayoutSystemCreatedFolderTitles(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRemoteLayoutSystemCreatedFolderTitles(I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 268
    iget-object v1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 270
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 271
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "folder"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "title"

    .line 272
    invoke-static {p1, v1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "AutoInstalls"

    const-string v2, "getRemoteLayoutSystemCreatedFolderTitles"

    .line 277
    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v0
.end method

.method public loadLayout(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 3

    const/4 v0, 0x0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mLayoutIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 182
    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->parseLayout(ILandroid/database/sqlite/SQLiteDatabase;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0

    :catch_0
    move-exception p1

    const-string v0, "AutoInstalls"

    const-string v1, "Error parsing layout"

    .line 186
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, -0x1

    return p1
.end method
