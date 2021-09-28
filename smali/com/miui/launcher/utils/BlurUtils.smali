.class public Lcom/miui/launcher/utils/BlurUtils;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# static fields
.field public static final BLUR_MODE_BLACK_SATURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BlurUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atLeastAndroidS()Z
    .locals 2

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1

    invoke-static {}, Lcom/miui/launcher/utils/BlurUtils;->isAtLeastSByCodeName()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blurRadiusOfRatio(F)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x43960000    # 300.0f

    .line 76
    invoke-static {v0, v1, p0}, Lcom/miui/launcher/utils/BlurUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static isAtLeastSByCodeName()Z
    .locals 4

    .line 25
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x53

    if-lt v0, v3, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private static lerp(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static setBlur(Ljava/lang/Object;F)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-static {p0, p1, v0}, Lcom/miui/launcher/utils/BlurUtils;->setBlur(Ljava/lang/Object;FI)V

    return-void
.end method

.method private static setBlur(Ljava/lang/Object;FI)V
    .locals 8

    .line 32
    :try_start_0
    instance-of v0, p0, Landroid/view/ViewRootImpl;

    if-nez v0, :cond_0

    const-string p0, "BlurUtils"

    const-string p1, "setBlur, viewRootImplObj isn\'t ViewRootImpl Class"

    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 36
    :cond_0
    check-cast p0, Landroid/view/ViewRootImpl;

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "BlurUtils"

    const-string p1, "setBlur, surfaceControl is invalid"

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 45
    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 46
    invoke-static {}, Lcom/miui/launcher/utils/BlurUtils;->atLeastAndroidS()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 47
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string p2, "setBackgroundBlurRadius"

    const-class v4, Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Landroid/view/SurfaceControl;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p0, v6, v3

    .line 53
    invoke-static {p1}, Lcom/miui/launcher/utils/BlurUtils;->blurRadiusOfRatio(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    move-object v2, v7

    move-object v3, p2

    .line 47
    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 57
    :goto_0
    invoke-virtual {v7, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setBlur(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    if-eqz v2, :cond_4

    .line 59
    invoke-virtual {v7, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setBlurRatio(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 60
    invoke-virtual {v7, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setBlurMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 63
    :cond_4
    :goto_1
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
