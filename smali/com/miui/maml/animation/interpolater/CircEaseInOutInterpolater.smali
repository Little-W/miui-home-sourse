.class public Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "CircEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_0

    const/high16 v0, -0x41000000    # -0.5f

    mul-float/2addr p1, p1

    sub-float/2addr v1, p1

    float-to-double v1, v1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    sub-double/2addr v1, v3

    double-to-float p1, v1

    mul-float/2addr p1, v0

    return p1

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    mul-float/2addr p1, p1

    sub-float/2addr v1, p1

    float-to-double v0, v1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v3

    double-to-float p1, v0

    mul-float/2addr p1, v2

    return p1
.end method
