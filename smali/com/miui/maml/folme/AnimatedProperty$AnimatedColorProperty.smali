.class public abstract Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;
.super Lmiuix/animation/property/ColorProperty;
.source "AnimatedProperty.java"

# interfaces
.implements Lcom/miui/maml/folme/IAnimatedProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/folme/AnimatedProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AnimatedColorProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/ColorProperty<",
        "Lcom/miui/maml/elements/AnimatedScreenElement;",
        ">;",
        "Lcom/miui/maml/folme/IAnimatedProperty<",
        "Lcom/miui/maml/elements/AnimatedScreenElement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 315
    invoke-direct {p0, p1}, Lmiuix/animation/property/ColorProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method
