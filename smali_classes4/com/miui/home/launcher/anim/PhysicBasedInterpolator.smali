.class public Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;
.super Ljava/lang/Object;
.source "PhysicBasedInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private c:F

.field private c1:F

.field private c2:F

.field private damping:F

.field private initial:F

.field private k:F

.field private m:F

.field private r:F

.field private response:F

.field private w:F


# direct methods
.method public constructor <init>(FF)V
    .locals 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    iput v0, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->initial:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    iput v0, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->m:F

    .line 16
    iget v0, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->initial:F

    iput v0, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->c1:F

    .line 20
    iput p1, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->damping:F

    .line 21
    iput p2, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->response:F

    float-to-double v0, p2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 23
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget p2, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->m:F

    float-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->k:F

    float-to-double v2, p1

    const-wide v4, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v2, v4

    float-to-double v4, p2

    mul-double/2addr v2, v4

    div-double/2addr v2, v0

    double-to-float p1, v2

    .line 24
    iput p1, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->c:F

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr p2, p1

    .line 25
    iget p1, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->k:F

    mul-float/2addr p2, p1

    iget p1, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->c:F

    mul-float/2addr p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iget p2, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->m:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p2, v0

    div-float/2addr p1, v1

    iput p1, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->w:F

    .line 26
    iget p1, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->c:F

    div-float/2addr p1, v0

    mul-float/2addr p1, p2

    neg-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->r:F

    .line 27
    iget p1, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->r:F

    iget p2, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->initial:F

    mul-float/2addr p1, p2

    const/4 p2, 0x0

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->w:F

    div-float/2addr p2, p1

    iput p2, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->c2:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    .line 34
    iget v2, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->r:F

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->c1:F

    float-to-double v2, v2

    iget v4, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->w:F

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->c2:F

    float-to-double v4, v4

    iget p0, p0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;->w:F

    mul-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method
