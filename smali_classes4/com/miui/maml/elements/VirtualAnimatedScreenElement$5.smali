.class Lcom/miui/maml/elements/VirtualAnimatedScreenElement$5;
.super Lcom/miui/maml/folme/AnimatedProperty;
.source "VirtualAnimatedScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/VirtualAnimatedScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/miui/maml/folme/AnimatedProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/maml/elements/AnimatedScreenElement;)F
    .locals 0

    .line 140
    instance-of p0, p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    if-eqz p0, :cond_0

    .line 141
    check-cast p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->access$400(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 123
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$5;->getValue(Lcom/miui/maml/elements/AnimatedScreenElement;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .locals 0

    .line 133
    instance-of p0, p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    if-eqz p0, :cond_0

    .line 134
    check-cast p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->access$400(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p0

    float-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 123
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$5;->setValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method

.method public setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .locals 0

    .line 126
    instance-of p0, p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    if-eqz p0, :cond_0

    .line 127
    check-cast p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->access$400(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p0

    float-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setVelocity(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setVelocityValue(Ljava/lang/Object;F)V
    .locals 0

    .line 123
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$5;->setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method
