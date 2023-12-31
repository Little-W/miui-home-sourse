.class public Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;
.super Ljava/lang/Object;
.source "ElasticEaseOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mAmplitudeExp:Lcom/miui/maml/data/Expression;

.field private mPriod:F

.field private mPriodExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    const v0, 0x3e99999a    # 0.3f

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    const v0, 0x3e99999a    # 0.3f

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    .line 29
    iput p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    .line 30
    iput p2, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    const v0, 0x3e99999a    # 0.3f

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    if-eqz p1, :cond_1

    .line 19
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 20
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    .line 22
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 23
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    :cond_1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 12

    .line 34
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    .line 40
    :cond_1
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-nez v2, :cond_3

    return v1

    :cond_3
    cmpg-float v2, v0, v1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v2, :cond_4

    .line 49
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_0

    .line 51
    :cond_4
    iget v2, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    float-to-double v5, v2

    div-double/2addr v5, v3

    div-float/2addr v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    mul-double/2addr v5, v1

    double-to-float v1, v5

    :goto_0
    float-to-double v5, v0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float/2addr v0, p1

    float-to-double v9, v0

    .line 53
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sub-float/2addr p1, v1

    float-to-double v0, p1

    mul-double/2addr v0, v3

    iget p0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    float-to-double p0, p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v5, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, p0

    double-to-float p0, v5

    return p0
.end method
