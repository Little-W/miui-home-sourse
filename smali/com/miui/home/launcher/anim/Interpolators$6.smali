.class Lcom/miui/home/launcher/anim/Interpolators$6;
.super Ljava/lang/Object;
.source "Interpolators.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/anim/Interpolators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
