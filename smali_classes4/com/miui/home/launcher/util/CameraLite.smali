.class public Lcom/miui/home/launcher/util/CameraLite;
.super Ljava/lang/Object;
.source "CameraLite.java"


# static fields
.field private static final POINT_2D:Landroid/graphics/PointF;

.field private static final SCREEN_HEIGHT:F

.field public static final SCREEN_WIDTH:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/miui/home/launcher/util/CameraLite;->SCREEN_WIDTH:F

    .line 12
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/miui/home/launcher/util/CameraLite;->SCREEN_HEIGHT:F

    .line 14
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/CameraLite;->POINT_2D:Landroid/graphics/PointF;

    return-void
.end method

.method public static getCameraDistance()F
    .locals 6

    .line 21
    sget v0, Lcom/miui/home/launcher/util/CameraLite;->SCREEN_WIDTH:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static to2D(FFF)Landroid/graphics/PointF;
    .locals 4

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/util/CameraLite;->getCameraDistance()F

    move-result v0

    add-float/2addr p2, v0

    .line 42
    sget v0, Lcom/miui/home/launcher/util/CameraLite;->SCREEN_WIDTH:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    invoke-static {}, Lcom/miui/home/launcher/util/CameraLite;->getCameraDistance()F

    move-result v2

    div-float/2addr v0, v2

    .line 43
    sget v2, Lcom/miui/home/launcher/util/CameraLite;->SCREEN_HEIGHT:F

    div-float/2addr v2, v1

    mul-float/2addr v2, p2

    invoke-static {}, Lcom/miui/home/launcher/util/CameraLite;->getCameraDistance()F

    move-result p2

    div-float/2addr v2, p2

    .line 44
    sget-object p2, Lcom/miui/home/launcher/util/CameraLite;->POINT_2D:Landroid/graphics/PointF;

    sget v3, Lcom/miui/home/launcher/util/CameraLite;->SCREEN_WIDTH:F

    div-float/2addr v3, v1

    mul-float/2addr v3, p0

    div-float/2addr v3, v0

    sget p0, Lcom/miui/home/launcher/util/CameraLite;->SCREEN_HEIGHT:F

    div-float/2addr p0, v1

    mul-float/2addr p0, p1

    div-float/2addr p0, v2

    invoke-virtual {p2, v3, p0}, Landroid/graphics/PointF;->set(FF)V

    .line 45
    sget-object p0, Lcom/miui/home/launcher/util/CameraLite;->POINT_2D:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static valueTo2D(FF)F
    .locals 2

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/util/CameraLite;->getCameraDistance()F

    move-result v0

    add-float/2addr p1, v0

    .line 33
    sget v0, Lcom/miui/home/launcher/util/CameraLite;->SCREEN_WIDTH:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    invoke-static {}, Lcom/miui/home/launcher/util/CameraLite;->getCameraDistance()F

    move-result p1

    div-float/2addr v0, p1

    .line 34
    sget p1, Lcom/miui/home/launcher/util/CameraLite;->SCREEN_WIDTH:F

    div-float/2addr p1, v1

    mul-float/2addr p1, p0

    div-float/2addr p1, v0

    return p1
.end method
