.class public abstract Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;
.super Ljava/lang/Object;
.source "BaseAutoInstallsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MamlParser;,
        Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$GadgetParser;,
        Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ResolveShortcutParser;,
        Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ResolveParser;,
        Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;,
        Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$Folder2x2_4Parser;,
        Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;,
        Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;,
        Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ShortcutParser;,
        Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$AppShortcutParser;,
        Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$AutoInstallParser;,
        Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;
    }
.end annotation


# instance fields
.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mColumnCount:I

.field protected final mContext:Landroid/content/Context;

.field private final mLayoutIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

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

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 177
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    .line 178
    iput-object p5, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mRootTag:Ljava/lang/String;

    .line 180
    iput-object p3, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    .line 181
    iput-object p4, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mLayoutIds:Ljava/util/List;

    .line 183
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mRowCount:I

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mColumnCount:I

    .line 186
    iget-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    .line 187
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mSerialNumber:J

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Ljava/util/HashMap;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getResolveElementsMap()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Landroid/appwidget/AppWidgetHost;)J
    .locals 0

    .line 51
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->parseGadget(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 0

    .line 51
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/content/res/Resources;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/appwidget/AppWidgetHost;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p0
.end method

.method static synthetic access$700(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;IILandroid/appwidget/AppWidgetHost;)J
    .locals 0

    .line 51
    invoke-static/range {p0 .. p6}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->parseGadget(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;IILandroid/appwidget/AppWidgetHost;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/util/ArrayMap;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getFolderElementsMap()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->beginDocument(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    return-void
.end method

.method private static beginDocument(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
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

    .line 728
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "defaultScreen"

    .line 729
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 730
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AutoInstalls"

    if-nez v0, :cond_1

    .line 731
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->setDefaultScreen(J)V

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultScreen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, "ignoreAlign"

    .line 734
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 735
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 736
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIgnoreAlignScreenList(Ljava/lang/String;)V

    .line 737
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set ignore align screen:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 740
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

    .line 725
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 745
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    add-int/2addr p1, v0

    .line 748
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/AutoInstallsLayout;
    .locals 3

    .line 61
    invoke-static {p2}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "AutoInstalls"

    if-eqz p2, :cond_0

    const-string p0, "not support elderly mode layout"

    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 65
    :cond_0
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v2

    if-eq p2, v2, :cond_1

    const-string p0, "not support other userId"

    .line 66
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v2, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    invoke-static {v2, p2}, Lcom/miui/home/launcher/install/PlayAutoInstallHelper;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "not found pai config apk"

    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 75
    :cond_2
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/content/res/Resources;

    invoke-static {p0, v0, p2, p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;)Lcom/miui/home/launcher/install/AutoInstallsLayout;

    move-result-object p0

    return-object p0
.end method

.method private static get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;)Lcom/miui/home/launcher/install/AutoInstallsLayout;
    .locals 8

    .line 79
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "default_layout_%dx%d_h%s"

    .line 79
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xml"

    .line 81
    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v6, "Formatted layout: "

    const-string v7, "AutoInstalls"

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found. Trying layout without hosteat"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v5, [Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "default_layout_%dx%d"

    .line 85
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_0
    if-nez v2, :cond_1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found. Trying the default layout"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "default_layout"

    .line 92
    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_1
    if-nez v2, :cond_2

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Layout definition not found in package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_2
    new-instance p1, Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 771
    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    .line 775
    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res-auto/com.miui.home"

    .line 759
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 761
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
            "Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 300
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$AppShortcutParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$AppShortcutParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$1;)V

    const-string v3, "appicon"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$AutoInstallParser;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$AutoInstallParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$1;)V

    const-string v2, "autoinstall"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ShortcutParser;

    iget-object v2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ShortcutParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Landroid/content/res/Resources;)V

    const-string v2, "shortcut"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;

    iget-object v2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Landroid/content/res/Resources;)V

    const-string v2, "market_auto_install"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ResolveParser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ResolveParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)V

    const-string p0, "resolve"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getLayoutElementsMap()Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 310
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$AppShortcutParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$AppShortcutParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$1;)V

    const-string v3, "appicon"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$AutoInstallParser;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$AutoInstallParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$1;)V

    const-string v3, "autoinstall"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)V

    const-string v3, "folder"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$Folder2x2_4Parser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$Folder2x2_4Parser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)V

    const-string v3, "folder_2x2_4"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$1;)V

    const-string v2, "appwidget"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ShortcutParser;

    iget-object v2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ShortcutParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Landroid/content/res/Resources;)V

    const-string v2, "shortcut"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ResolveParser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ResolveParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)V

    const-string v2, "resolve"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$GadgetParser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$GadgetParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)V

    const-string v2, "gadget"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MamlParser;

    iget-object p0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MamlParser;-><init>(Landroid/content/res/Resources;)V

    const-string p0, "maml"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getResolveElementsMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .line 902
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 903
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$AppShortcutParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$AppShortcutParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$1;)V

    const-string v2, "appicon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    new-instance v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ResolveShortcutParser;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ResolveShortcutParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)V

    const-string p0, "shortcut"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private parseAndAddNode(Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;",
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

    .line 233
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "include"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string p2, "workspace"

    .line 234
    invoke-static {p1, p2, v1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->parseLayout(ILandroid/database/sqlite/SQLiteDatabase;)I

    move-result p0

    return p0

    :cond_0
    return v1

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    const-string v0, "container"

    .line 245
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hotseat"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "cellX"

    if-eqz v2, :cond_2

    const-wide/16 v4, -0x65

    .line 247
    iget-object v2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v6, "rank"

    .line 248
    invoke-static {p1, v6}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mColumnCount:I

    invoke-static {v6, v7}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 247
    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-wide/16 v4, -0x64

    .line 251
    iget-object v2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v6, "screen"

    .line 252
    invoke-static {p1, v6}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 251
    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 253
    iget-object v2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v6, "x"

    .line 254
    invoke-static {p1, v6}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mColumnCount:I

    invoke-static {v6, v7}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "y"

    .line 256
    invoke-static {p1, v3}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v6, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mRowCount:I

    invoke-static {v3, v6}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "cellY"

    .line 255
    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    iget-wide v2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mSerialNumber:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "profileId"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;

    if-nez p2, :cond_3

    .line 264
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring unknown element tag: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoInstalls"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 267
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {p2, p1, p3, p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-ltz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method private static parseGadget(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;IILandroid/appwidget/AppWidgetHost;)J
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseGadget:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoInstalls"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 542
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

    .line 556
    invoke-static {p0, p3}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 554
    :pswitch_1
    invoke-static {p1, p2, p4, p5, p6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addGoogleOriginalSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;IILandroid/appwidget/AppWidgetHost;)J

    move-result-wide p0

    return-wide p0

    :pswitch_2
    const/16 p0, 0xd

    .line 552
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0

    .line 550
    :pswitch_3
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    .line 548
    :pswitch_4
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClock3x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    .line 546
    :pswitch_5
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClock2x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    .line 544
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

.method private static parseGadget(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Landroid/appwidget/AppWidgetHost;)J
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 564
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->parseGadget(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;IILandroid/appwidget/AppWidgetHost;)J

    move-result-wide p0

    return-wide p0
.end method

.method private parseLayout(ILandroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mRootTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->beginDocument(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 213
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 215
    invoke-direct {p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getLayoutElementsMap()Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x0

    .line 218
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 219
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_2

    :cond_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->parseAndAddNode(Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method protected addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 7

    .line 386
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 387
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object v2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p0

    return-wide p0
.end method

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

    .line 275
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 276
    iget-object v1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mLayoutIds:Ljava/util/List;

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

    .line 277
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getRemoteLayoutSystemCreatedFolderTitles(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRemoteLayoutSystemCreatedFolderTitles(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 284
    iget-object p0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 286
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 287
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "folder"

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "title"

    .line 288
    invoke-static {p0, p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AutoInstalls"

    const-string v1, "getRemoteLayoutSystemCreatedFolderTitles"

    .line 293
    invoke-static {p1, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v0
.end method

.method protected abstract handMarketAutoInstall(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;JIJ)V
.end method

.method public loadLayout(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 3

    const/4 v0, 0x0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mLayoutIds:Ljava/util/List;

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

    .line 198
    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->parseLayout(ILandroid/database/sqlite/SQLiteDatabase;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string p1, "AutoInstalls"

    const-string v0, "Error parsing layout"

    .line 202
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method
