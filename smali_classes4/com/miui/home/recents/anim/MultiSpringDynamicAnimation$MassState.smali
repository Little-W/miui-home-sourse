.class public Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;
.super Ljava/lang/Object;
.source "MultiSpringDynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MassState"
.end annotation


# instance fields
.field mValue:F

.field mVelocity:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mValue:F

    .line 45
    iput p2, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mVelocity:F

    return-void
.end method
