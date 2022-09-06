.class public Lcom/miui/home/launcher/IconProvider;
.super Ljava/lang/Object;
.source "IconProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconProvider"


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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/IconProvider;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03001a

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/IconProvider;->mLiteFancyIconList:Ljava/util/List;

    return-void
.end method

.method private checkIconSize(Landroid/content/pm/LauncherActivityInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    instance-of v0, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_1

    const/high16 v0, 0x42d80000    # 108.0f

    .line 93
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    .line 94
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v0

    .line 95
    move-object v2, p2

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 96
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-gt v3, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 97
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/IconProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'s icon too large, w = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " h = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    .line 99
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 100
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 99
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 101
    new-instance p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/IconProvider;->scale(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/IconProvider;->scale(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_1
    return-object p2
.end method

.method private static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 134
    const-class v3, Lmiui/content/res/IconCustomizer;

    const-string v5, "getIcon"

    const-class v6, Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x6

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-class v8, Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v8, v7, v11

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x3

    aput-object v8, v7, v12

    const-class v8, Landroid/content/pm/ApplicationInfo;

    const/4 v13, 0x4

    aput-object v8, v7, v13

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x5

    aput-object v8, v7, v14

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v9

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    .line 136
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v12

    aput-object p4, v8, v13

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v8, v14

    const/4 v4, 0x0

    .line 134
    invoke-static/range {v3 .. v8}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 138
    invoke-static {p0, v1, v2, v3}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    :cond_0
    return-object v3
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;
    .locals 1

    .line 44
    new-instance v0, Lcom/miui/home/launcher/IconProvider;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/IconProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private scale(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 111
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    if-lez v0, :cond_0

    if-lez p2, :cond_0

    .line 113
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 114
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 55
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 61
    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mLiteFancyIconList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    const-wide/32 v5, 0x36ee80

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move-object v3, v1

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/MamlUtils;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 65
    :goto_1
    sget-boolean v3, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-nez v3, :cond_4

    if-nez v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherActivityInfoCompat;->getIconResource(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v5

    .line 69
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, v8

    .line 67
    invoke-static/range {v2 .. v7}, Lcom/miui/home/launcher/IconProvider;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    .line 71
    iget-object v3, p0, Lcom/miui/home/launcher/IconProvider;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 72
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 73
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherActivityInfoCompat;->getIconResource(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v5

    .line 74
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, v1

    .line 72
    invoke-static/range {v2 .. v7}, Lcom/miui/home/launcher/IconProvider;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1, v1}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 80
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_7

    instance-of v1, v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_7

    .line 81
    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 83
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getBadgeDrawable(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    :cond_6
    new-instance v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    goto :goto_2

    :cond_7
    move-object v1, v2

    .line 88
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/IconProvider;->checkIconSize(Landroid/content/pm/LauncherActivityInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_3
    return-object v0
.end method

.method public getDefaultActivityIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 124
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    const v0, 0x1080093

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10d0000

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getRawIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 129
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1
.end method
