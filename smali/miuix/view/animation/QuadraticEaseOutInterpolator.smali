.class public Lmiuix/view/animation/QuadraticEaseOutInterpolator;
.super Ljava/lang/Object;
.source "QuadraticEaseOutInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    neg-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    return v0
.end method
