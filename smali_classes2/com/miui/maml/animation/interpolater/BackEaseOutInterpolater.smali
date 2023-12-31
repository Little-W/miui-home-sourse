.class public Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;
.super Ljava/lang/Object;
.source "BackEaseOutInterpolater.java"

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
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    .line 22
    iput p1, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    if-eqz p1, :cond_0

    .line 16
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 17
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactorExp:Lcom/miui/maml/data/Expression;

    :cond_0
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactorExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    .line 29
    iget p0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    add-float v2, p0, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, p0

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method
