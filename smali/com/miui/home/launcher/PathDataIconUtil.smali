.class public Lcom/miui/home/launcher/PathDataIconUtil;
.super Ljava/lang/Object;
.source "PathDataIconUtil.java"


# static fields
.field private static sIconClipCornerRadius:F = -1.0f

.field private static sIconClipCornerRadiusMethod:Lmiui/reflect/Method;

.field private static sIconClipHeightMethod:Lmiui/reflect/Method;

.field private static sIconClipWidthMethod:Lmiui/reflect/Method;

.field private static sIsIconClipPathDataARect:Z

.field private static sIsSupportThemeAdaptiveIcon:Z

.field private static sPathDataForClipIcon:Ljava/lang/String;

.field private static sPathDataForClipIconMethod:Lmiui/reflect/Method;

.field private static sPathDataHeightPercent:F

.field private static sPathDataWidthPercent:F

.field private static sPathFromPathDataForClipIcon:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getCornerRadiusEstimate(Lcom/miui/home/launcher/ShortcutIcon;)F
    .locals 1

    .line 99
    invoke-static {p0}, Lcom/miui/home/launcher/PathDataIconUtil;->useCornerRadiusEstimate(Lcom/miui/home/launcher/ShortcutIcon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getIconCornerRadiusEstimate()F

    move-result p0

    return p0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconRadius()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static getIconCornerRadiusEstimate()F
    .locals 1

    .line 42
    sget v0, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadius:F

    return v0
.end method

.method public static getPathDataForClipIcon()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIcon:Ljava/lang/String;

    return-object v0
.end method

.method public static getPathDataHeightPercent()F
    .locals 1

    .line 84
    sget v0, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataHeightPercent:F

    return v0
.end method

.method public static getPathDataWidthPercent()F
    .locals 1

    .line 80
    sget v0, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataWidthPercent:F

    return v0
.end method

.method public static getPathFromPathDataForClipIcon()Landroid/graphics/Path;
    .locals 1

    .line 38
    sget-object v0, Lcom/miui/home/launcher/PathDataIconUtil;->sPathFromPathDataForClipIcon:Landroid/graphics/Path;

    return-object v0
.end method

.method public static initDataPathFroClipIcon()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 47
    :try_start_0
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIconMethod:Lmiui/reflect/Method;

    if-nez v3, :cond_0

    .line 48
    const-class v3, Lmiui/content/res/IconCustomizer;

    const-string v4, "getConfigIconMaskValue"

    const-class v5, Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Class;

    invoke-static {v3, v4, v5, v6}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIconMethod:Lmiui/reflect/Method;

    .line 50
    :cond_0
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIconMethod:Lmiui/reflect/Method;

    const-class v4, Lmiui/content/res/IconCustomizer;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v0, v5}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIcon:Ljava/lang/String;

    .line 51
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIcon:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIcon:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathDataForClipIcon()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathFromPathDataForClipIcon:Landroid/graphics/Path;

    .line 53
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadiusMethod:Lmiui/reflect/Method;

    if-nez v3, :cond_1

    .line 54
    const-class v3, Lmiui/content/res/IconCustomizer;

    const-string v5, "getIconClipCornerRadius"

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v7, v2, [Ljava/lang/Class;

    invoke-static {v3, v5, v6, v7}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadiusMethod:Lmiui/reflect/Method;

    .line 56
    :cond_1
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipWidthMethod:Lmiui/reflect/Method;

    if-nez v3, :cond_2

    .line 57
    const-class v3, Lmiui/content/res/IconCustomizer;

    const-string v5, "getIconClipWidth"

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v7, v2, [Ljava/lang/Class;

    invoke-static {v3, v5, v6, v7}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipWidthMethod:Lmiui/reflect/Method;

    .line 59
    :cond_2
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipHeightMethod:Lmiui/reflect/Method;

    if-nez v3, :cond_3

    .line 60
    const-class v3, Lmiui/content/res/IconCustomizer;

    const-string v5, "getIconClipHeight"

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v7, v2, [Ljava/lang/Class;

    invoke-static {v3, v5, v6, v7}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipHeightMethod:Lmiui/reflect/Method;

    .line 62
    :cond_3
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadiusMethod:Lmiui/reflect/Method;

    const-class v5, Lmiui/content/res/IconCustomizer;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v0, v6}, Lmiui/reflect/Method;->invokeFloat(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)F

    move-result v3

    sput v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadius:F

    .line 63
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipWidthMethod:Lmiui/reflect/Method;

    const-class v5, Lmiui/content/res/IconCustomizer;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v0, v6}, Lmiui/reflect/Method;->invokeFloat(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)F

    move-result v3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v3, v5

    sput v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataWidthPercent:F

    .line 64
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipHeightMethod:Lmiui/reflect/Method;

    const-class v6, Lmiui/content/res/IconCustomizer;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v0, v7}, Lmiui/reflect/Method;->invokeFloat(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)F

    move-result v3

    div-float/2addr v3, v5

    sput v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataHeightPercent:F

    .line 65
    sget v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadius:F

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_4

    sget v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataWidthPercent:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_4

    sget v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataHeightPercent:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_4

    sget v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataWidthPercent:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    sget v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataHeightPercent:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    sput-boolean v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIsIconClipPathDataARect:Z

    .line 68
    :cond_5
    sput-boolean v4, Lcom/miui/home/launcher/PathDataIconUtil;->sIsSupportThemeAdaptiveIcon:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    :catch_0
    sput-boolean v2, Lcom/miui/home/launcher/PathDataIconUtil;->sIsSupportThemeAdaptiveIcon:Z

    .line 71
    sput-object v0, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIcon:Ljava/lang/String;

    .line 72
    sput v1, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadius:F

    .line 73
    sput v1, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataWidthPercent:F

    .line 74
    sput v1, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataHeightPercent:F

    .line 75
    sput-boolean v2, Lcom/miui/home/launcher/PathDataIconUtil;->sIsIconClipPathDataARect:Z

    :goto_1
    return-void
.end method

.method public static isIconClipPathDataARect()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/miui/home/launcher/PathDataIconUtil;->sIsIconClipPathDataARect:Z

    return v0
.end method

.method public static isSupportThemeAdaptiveIcon()Z
    .locals 1

    .line 88
    sget-boolean v0, Lcom/miui/home/launcher/PathDataIconUtil;->sIsSupportThemeAdaptiveIcon:Z

    return v0
.end method

.method public static useCornerRadiusEstimate(Lcom/miui/home/launcher/ShortcutIcon;)Z
    .locals 1

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/views/FloatingIconView;->isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 94
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->isIconClipPathDataARect()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->isSupportThemeAdaptiveIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
