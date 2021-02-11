.class final Lmiuix/animation/base/AnimConfigLink$4;
.super Ljava/lang/Object;
.source "AnimConfigLink.java"

# interfaces
.implements Lmiuix/animation/base/AnimConfigLink$IMapOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/base/AnimConfigLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiuix/animation/base/AnimConfigLink$IMapOperation<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    .line 102
    iget p2, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    return-object p3

    .line 103
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    iget p1, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 104
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget p1, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/base/AnimConfigLink$4;->process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
