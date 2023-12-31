.class public Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;
.super Ljava/lang/Object;
.source "PhysicBasedInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private c:F

.field private c1:F

.field private c2:F

.field private k:F

.field private m:F

.field private mDamping:F

.field private mDampingExp:Lcom/miui/maml/data/Expression;

.field private mInitial:F

.field private mNeedEvaluate:Z

.field private mResponse:F

.field private mResponseExp:Lcom/miui/maml/data/Expression;

.field private r:F

.field private w:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666    # 0.9f

    .line 8
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    const v0, 0x3e99999a    # 0.3f

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 18
    iget v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666    # 0.9f

    .line 8
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    const v0, 0x3e99999a    # 0.3f

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 18
    iget v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 41
    iput p1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 42
    iput p2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666    # 0.9f

    .line 8
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    const v0, 0x3e99999a    # 0.3f

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 18
    iget v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    if-eqz p1, :cond_1

    .line 31
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 32
    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDampingExp:Lcom/miui/maml/data/Expression;

    .line 34
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 35
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponseExp:Lcom/miui/maml/data/Expression;

    :cond_1
    return-void
.end method

.method private evaluate()V
    .locals 5

    .line 68
    iget-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 69
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->k:F

    const-wide v0, 0x402921fb54442d18L    # 12.566370614359172

    .line 70
    iget v3, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    float-to-double v3, v3

    mul-double/2addr v3, v0

    float-to-double v0, v2

    mul-double/2addr v3, v0

    iget v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    float-to-double v0, v0

    div-double/2addr v3, v0

    double-to-float v0, v3

    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    .line 71
    iget v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->k:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c:F

    mul-float/2addr v0, v0

    sub-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    .line 72
    iget v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c:F

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->r:F

    const/4 v0, 0x0

    .line 73
    iget v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->r:F

    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c2:F

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDampingExp:Lcom/miui/maml/data/Expression;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v0, v2

    .line 49
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_0

    .line 50
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 51
    iput-boolean v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponseExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v0, v2

    .line 56
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    .line 57
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 58
    iput-boolean v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->evaluate()V

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    .line 64
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->r:F

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    float-to-double v2, v2

    iget v4, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c2:F

    float-to-double v4, v4

    iget p0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

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
