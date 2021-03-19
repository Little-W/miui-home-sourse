.class public Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "BackEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mFactor:F

.field private mFactorExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    .line 22
    iput p1, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    if-eqz p1, :cond_0

    .line 16
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 17
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactorExp:Lcom/miui/maml/data/Expression;

    :cond_0
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9

    .line 26
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactorExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    .line 29
    :cond_0
    iget v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v2

    const-wide v4, 0x3ff8666666666666L    # 1.525

    const/high16 v6, 0x3f000000    # 0.5f

    if-gez v3, :cond_1

    mul-float v1, p1, p1

    float-to-double v7, v0

    mul-double/2addr v7, v4

    double-to-float v0, v7

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v6

    return v1

    :cond_1
    sub-float/2addr p1, v1

    mul-float v3, p1, p1

    float-to-double v7, v0

    mul-double/2addr v7, v4

    double-to-float v0, v7

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    mul-float/2addr v3, v6

    return v3
.end method
