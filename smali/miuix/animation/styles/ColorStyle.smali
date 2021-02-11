.class public Lmiuix/animation/styles/ColorStyle;
.super Lmiuix/animation/styles/PropertyStyle;
.source "ColorStyle.java"


# instance fields
.field private mIsAtTarget:Z

.field private mProgress:F


# direct methods
.method constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lmiuix/animation/styles/PropertyStyle;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method


# virtual methods
.method protected getEvaluator()Landroid/animation/TypeEvaluator;
    .locals 1

    .line 22
    sget-object v0, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method protected isAnimRunning(DD)Z
    .locals 2

    .line 60
    invoke-virtual {p0}, Lmiuix/animation/styles/ColorStyle;->getTargetDoubleValue()D

    move-result-wide v0

    cmpl-double p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 61
    iget-boolean p1, p0, Lmiuix/animation/styles/ColorStyle;->mIsAtTarget:Z

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lmiuix/animation/styles/ColorStyle;->mIsAtTarget:Z

    goto :goto_0

    .line 66
    :cond_1
    iput-boolean p2, p0, Lmiuix/animation/styles/ColorStyle;->mIsAtTarget:Z

    .line 68
    :goto_0
    iget-object p1, p0, Lmiuix/animation/styles/ColorStyle;->mEquilibrium:Lmiuix/animation/physics/EquilibriumChecker;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lmiuix/animation/physics/EquilibriumChecker;->setTargetValue(D)V

    .line 69
    iget p1, p0, Lmiuix/animation/styles/ColorStyle;->mProgress:F

    float-to-double p1, p1

    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/animation/styles/PropertyStyle;->isAnimRunning(DD)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 4

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lmiuix/animation/styles/ColorStyle;->mProgress:F

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lmiuix/animation/styles/ColorStyle;->mIsAtTarget:Z

    .line 29
    iget-object v0, p0, Lmiuix/animation/styles/ColorStyle;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object v1, p0, Lmiuix/animation/styles/ColorStyle;->mProperty:Lmiuix/animation/property/FloatProperty;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    return-void
.end method

.method protected processCurrentValue(D)D
    .locals 0

    .line 49
    iget p1, p0, Lmiuix/animation/styles/ColorStyle;->mProgress:F

    float-to-double p1, p1

    return-wide p1
.end method

.method protected processTargetValue(D)D
    .locals 0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1
.end method

.method protected regulateProgress(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method protected toAnimValue(D)D
    .locals 3

    double-to-float p1, p1

    .line 54
    invoke-virtual {p0, p1}, Lmiuix/animation/styles/ColorStyle;->regulateProgress(F)F

    move-result p1

    iput p1, p0, Lmiuix/animation/styles/ColorStyle;->mProgress:F

    .line 55
    invoke-virtual {p0}, Lmiuix/animation/styles/ColorStyle;->getEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object p1

    iget p2, p0, Lmiuix/animation/styles/ColorStyle;->mProgress:F

    iget-object v0, p0, Lmiuix/animation/styles/ColorStyle;->mIntValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/styles/ColorStyle;->mIntValues:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double p1, p1

    return-wide p1
.end method
