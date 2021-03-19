.class final Lcom/miui/maml/elements/VirtualAnimatedScreenElement$4;
.super Lcom/miui/maml/folme/AnimatedProperty;
.source "VirtualAnimatedScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/VirtualAnimatedScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/miui/maml/folme/AnimatedProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/maml/elements/AnimatedScreenElement;)F
    .locals 2

    .line 116
    instance-of v0, p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->access$300(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 99
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$4;->getValue(Lcom/miui/maml/elements/AnimatedScreenElement;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .locals 2

    .line 109
    instance-of v0, p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    if-eqz v0, :cond_0

    .line 110
    check-cast p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->access$300(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 99
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$4;->setValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method

.method public setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .locals 2

    .line 102
    instance-of v0, p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->access$300(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/folme/PropertyWrapper;->setVelocity(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setVelocityValue(Ljava/lang/Object;F)V
    .locals 0

    .line 99
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$4;->setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method
