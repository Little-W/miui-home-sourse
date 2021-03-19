.class public Lcom/miui/home/launcher/IconProvider;
.super Ljava/lang/Object;
.source "IconProvider.java"


# static fields
.field private static final CUSTOMIZED_SIGNATURE:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 81
    const-class v0, Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-class v2, Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/IconProvider;->CUSTOMIZED_SIGNATURE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/IconProvider;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    return-void
.end method

.method private static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 86
    const-class v0, Lmiui/content/res/IconCustomizer;

    const-string v1, "getIcon"

    sget-object v2, Lcom/miui/home/launcher/IconProvider;->CUSTOMIZED_SIGNATURE:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 87
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 p3, 0x4

    aput-object p4, v3, p3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, v3, p4

    const/4 p3, 0x0

    .line 86
    invoke-static {v0, p3, v1, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/Drawable;

    if-nez p4, :cond_0

    .line 89
    invoke-static {p0, p1, p2, p3}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p4

    :cond_0
    return-object p4
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;
    .locals 1

    .line 28
    new-instance v0, Lcom/miui/home/launcher/IconProvider;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/IconProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 37
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 43
    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    goto :goto_0

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    const-wide/32 v5, 0x36ee80

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move-object v3, v1

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/MamlUtils;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    .line 49
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherActivityInfoCompat;->getIconResource(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v5

    .line 51
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, v8

    .line 49
    invoke-static/range {v2 .. v7}, Lcom/miui/home/launcher/IconProvider;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    .line 53
    iget-object v3, p0, Lcom/miui/home/launcher/IconProvider;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 54
    iget-object v2, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 55
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherActivityInfoCompat;->getIconResource(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v5

    .line 56
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, v1

    .line 54
    invoke-static/range {v2 .. v7}, Lcom/miui/home/launcher/IconProvider;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 61
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_6

    instance-of v1, v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_6

    .line 62
    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 64
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getBadgeDrawable(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    :cond_5
    new-instance v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    goto :goto_1

    :cond_6
    move-object v1, v2

    :goto_1
    return-object v1

    :cond_7
    :goto_2
    return-object v0
.end method

.method public getDefaultActivityIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 73
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    sget-boolean v0, Lcom/miui/home/library/utils/SdkVersion;->ATLEAST_OREO:Z

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

    .line 78
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1
.end method
