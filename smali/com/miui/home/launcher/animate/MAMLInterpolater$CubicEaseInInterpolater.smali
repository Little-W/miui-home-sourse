.class public Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;
.super Ljava/lang/Object;
.source "MAMLInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/animate/MAMLInterpolater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CubicEaseInInterpolater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0
.end method
