.class public Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;
.super Ljava/lang/Object;
.source "BounceEaseInInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterpolationImp(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    .line 12
    invoke-static {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;->getInterpolationImp(F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;->getInterpolationImp(F)F

    move-result p0

    return p0
.end method
