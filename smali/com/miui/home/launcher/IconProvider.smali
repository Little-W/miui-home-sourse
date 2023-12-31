.class public Lcom/miui/home/launcher/IconProvider;
.super Ljava/lang/Object;
.source "IconProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

.field private mLiteFancyIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/IconProvider;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030016

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/IconProvider;->mLiteFancyIconList:Ljava/util/List;

    return-void
.end method

.method private static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 148
    const-class v3, Lmiui/content/res/IconCustomizer;

    const-class v6, Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x6

    new-array v7, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const-class v5, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v5, v7, v9

    const-class v5, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v5, v7, v10

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x3

    aput-object v5, v7, v11

    const-class v5, Landroid/content/pm/ApplicationInfo;

    const/4 v12, 0x4

    aput-object v5, v7, v12

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x5

    aput-object v5, v7, v13

    new-array v14, v4, [Ljava/lang/Object;

    aput-object v0, v14, v8

    aput-object v1, v14, v9

    aput-object v2, v14, v10

    .line 150
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v14, v11

    aput-object p4, v14, v12

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v14, v13

    const/4 v4, 0x0

    const-string v5, "getIcon"

    move-object v8, v14

    .line 148
    invoke-static/range {v3 .. v8}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 152
    invoke-static {p0, v1, v2, v3}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    :cond_0
    return-object v3
.end method

.method private getLayerAdaptiveDrawable(Landroid/content/pm/LauncherActivityInfo;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 127
    invoke-static {p2}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->getMonochrome(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    .line 129
    new-instance p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    return-object p0

    .line 131
    :cond_0
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->getColor()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 132
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/high16 v0, -0x1000000

    .line 133
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 134
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {v0, p2, p0, p3, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;
    .locals 1

    .line 49
    new-instance v0, Lcom/miui/home/launcher/IconProvider;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/IconProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 60
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 67
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_1

    .line 68
    sget-object v2, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion;

    invoke-virtual {v2}, Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconProvider;

    move-result-object v2

    invoke-virtual {v2, v1, v8, v9}, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->getIcon(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v10, v2

    goto :goto_0

    :cond_1
    move-object v10, v0

    :goto_0
    if-nez v10, :cond_3

    .line 70
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteOrMiddleVersion()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mLiteFancyIconList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    const-wide/32 v5, 0x36ee80

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move-object v3, v1

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/MamlUtils;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v10, v2

    .line 74
    :cond_3
    sget-boolean v2, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-nez v2, :cond_5

    if-nez v10, :cond_4

    .line 76
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherActivityInfoCompat;->getIconResource(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v5

    .line 78
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, v8

    .line 76
    invoke-static/range {v2 .. v7}, Lcom/miui/home/launcher/IconProvider;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v10, v2

    :cond_4
    if-nez v10, :cond_5

    .line 80
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v9, :cond_5

    .line 81
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 82
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherActivityInfoCompat;->getIconResource(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v5

    .line 83
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, v1

    .line 81
    invoke-static/range {v2 .. v7}, Lcom/miui/home/launcher/IconProvider;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v10, v1

    :cond_5
    if-nez v10, :cond_6

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1, v1}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_6
    move-object v1, v10

    .line 89
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_8

    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_8

    .line 90
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 92
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getBadgeDrawable(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    :cond_7
    invoke-direct {p0, p1, v2, v0}, Lcom/miui/home/launcher/IconProvider;->getLayerAdaptiveDrawable(Landroid/content/pm/LauncherActivityInfo;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v1, v10

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 98
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getActivityIcon: Fail! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-object v1

    :cond_9
    :goto_4
    return-object v0
.end method

.method public getBigIconDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;IILjava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 159
    iget-object v6, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getDisplayBigIconDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;IILjava/lang/String;Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultActivityIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 138
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    sget-boolean p1, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_OREO:Z

    if-eqz p1, :cond_0

    const p1, 0x1080093

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10d0000

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getRawIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 143
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method
