.class public Lcom/miui/home/launcher/PathDataIconUtil;
.super Ljava/lang/Object;
.source "PathDataIconUtil.java"


# static fields
.field private static sIconClipCornerRadius:F = -1.0f

.field private static sIconClipCornerRadiusMethod:Ljava/lang/reflect/Method;

.field private static sIconClipHeightMethod:Ljava/lang/reflect/Method;

.field private static sIconClipWidthMethod:Ljava/lang/reflect/Method;

.field private static sIsIconClipPathDataARect:Z

.field private static sIsSupportThemeAdaptiveIcon:Z

.field private static sPathDataForClipIcon:Ljava/lang/String;

.field private static sPathDataForClipIconMethod:Ljava/lang/reflect/Method;

.field private static sPathDataHeightPercent:F

.field private static sPathDataWidthPercent:F

.field private static sPathFromPathDataForClipIcon:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)F
    .locals 1

    .line 106
    invoke-static {p0}, Lcom/miui/home/launcher/PathDataIconUtil;->useCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getIconCornerRadiusEstimate()F

    move-result p0

    return p0

    .line 109
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconRadius()F

    move-result p0

    return p0
.end method

.method public static getIconCornerRadiusEstimate()F
    .locals 1

    .line 43
    sget v0, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadius:F

    return v0
.end method

.method public static getPathDataForClipIcon()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIcon:Ljava/lang/String;

    return-object v0
.end method

.method public static getPathDataHeightPercent()F
    .locals 1

    .line 91
    sget v0, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataHeightPercent:F

    return v0
.end method

.method public static getPathDataWidthPercent()F
    .locals 1

    .line 87
    sget v0, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataWidthPercent:F

    return v0
.end method

.method public static getPathFromPathDataForClipIcon()Landroid/graphics/Path;
    .locals 1

    .line 39
    sget-object v0, Lcom/miui/home/launcher/PathDataIconUtil;->sPathFromPathDataForClipIcon:Landroid/graphics/Path;

    return-object v0
.end method

.method public static initDataPathFroClipIcon()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    :try_start_0
    sget-object v2, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIconMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 49
    const-class v2, Lmiui/content/res/IconCustomizer;

    const-string v3, "getConfigIconMaskValue"

    const-class v4, Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Class;

    .line 50
    invoke-static {v4, v5}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Class;

    .line 49
    invoke-static {v2, v3, v4, v5}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIconMethod:Ljava/lang/reflect/Method;

    .line 52
    :cond_0
    const-class v2, Lmiui/content/res/IconCustomizer;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 53
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIconMethod:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIcon:Ljava/lang/String;

    .line 54
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIcon:Ljava/lang/String;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIcon:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathDataForClipIcon()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathFromPathDataForClipIcon:Landroid/graphics/Path;

    .line 56
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadiusMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 57
    const-class v3, Lmiui/content/res/IconCustomizer;

    const-string v4, "getIconClipCornerRadius"

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v6, v1, [Ljava/lang/Class;

    .line 58
    invoke-static {v5, v6}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Class;

    .line 57
    invoke-static {v3, v4, v5, v6}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadiusMethod:Ljava/lang/reflect/Method;

    .line 60
    :cond_1
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipWidthMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 61
    const-class v3, Lmiui/content/res/IconCustomizer;

    const-string v4, "getIconClipWidth"

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v6, v1, [Ljava/lang/Class;

    .line 62
    invoke-static {v5, v6}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Class;

    .line 61
    invoke-static {v3, v4, v5, v6}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipWidthMethod:Ljava/lang/reflect/Method;

    .line 64
    :cond_2
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipHeightMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    .line 65
    const-class v3, Lmiui/content/res/IconCustomizer;

    const-string v4, "getIconClipHeight"

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v6, v1, [Ljava/lang/Class;

    .line 66
    invoke-static {v5, v6}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Class;

    .line 65
    invoke-static {v3, v4, v5, v6}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipHeightMethod:Ljava/lang/reflect/Method;

    .line 68
    :cond_3
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIconMethod:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIcon:Ljava/lang/String;

    .line 69
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadiusMethod:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sput v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadius:F

    .line 70
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipWidthMethod:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    sput v3, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataWidthPercent:F

    .line 71
    sget-object v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipHeightMethod:Ljava/lang/reflect/Method;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v4

    sput v2, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataHeightPercent:F

    .line 72
    sget v2, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadius:F

    cmpl-float v2, v2, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_4

    sget v2, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataWidthPercent:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_4

    sget v2, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataHeightPercent:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_4

    sget v2, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataWidthPercent:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_4

    sget v2, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataHeightPercent:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/miui/home/launcher/PathDataIconUtil;->sIsIconClipPathDataARect:Z

    .line 74
    sput-boolean v3, Lcom/miui/home/launcher/PathDataIconUtil;->sIsSupportThemeAdaptiveIcon:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 77
    :catch_0
    sput-boolean v1, Lcom/miui/home/launcher/PathDataIconUtil;->sIsSupportThemeAdaptiveIcon:Z

    const/4 v2, 0x0

    .line 78
    sput-object v2, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataForClipIcon:Ljava/lang/String;

    .line 79
    sput v0, Lcom/miui/home/launcher/PathDataIconUtil;->sIconClipCornerRadius:F

    .line 80
    sput v0, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataWidthPercent:F

    .line 81
    sput v0, Lcom/miui/home/launcher/PathDataIconUtil;->sPathDataHeightPercent:F

    .line 82
    sput-boolean v1, Lcom/miui/home/launcher/PathDataIconUtil;->sIsIconClipPathDataARect:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public static isIconClipPathDataARect()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/miui/home/launcher/PathDataIconUtil;->sIsIconClipPathDataARect:Z

    return v0
.end method

.method public static isSupportThemeAdaptiveIcon()Z
    .locals 1

    .line 95
    sget-boolean v0, Lcom/miui/home/launcher/PathDataIconUtil;->sIsSupportThemeAdaptiveIcon:Z

    return v0
.end method

.method public static useCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z
    .locals 1

    .line 99
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/views/FloatingIconView;->isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->isIconClipPathDataARect()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 102
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
