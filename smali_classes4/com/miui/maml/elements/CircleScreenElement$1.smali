.class Lcom/miui/maml/elements/CircleScreenElement$1;
.super Lcom/miui/maml/folme/AnimatedProperty;
.source "CircleScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/CircleScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/miui/maml/folme/AnimatedProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/maml/elements/AnimatedScreenElement;)F
    .locals 0

    .line 38
    instance-of p0, p1, Lcom/miui/maml/elements/CircleScreenElement;

    if-eqz p0, :cond_0

    .line 39
    check-cast p1, Lcom/miui/maml/elements/CircleScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/CircleScreenElement;->access$000(Lcom/miui/maml/elements/CircleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

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

    .line 21
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/CircleScreenElement$1;->getValue(Lcom/miui/maml/elements/AnimatedScreenElement;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .locals 0

    .line 31
    instance-of p0, p1, Lcom/miui/maml/elements/CircleScreenElement;

    if-eqz p0, :cond_0

    .line 32
    check-cast p1, Lcom/miui/maml/elements/CircleScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/CircleScreenElement;->access$000(Lcom/miui/maml/elements/CircleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p0

    float-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 21
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/CircleScreenElement$1;->setValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method

.method public setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .locals 0

    .line 24
    instance-of p0, p1, Lcom/miui/maml/elements/CircleScreenElement;

    if-eqz p0, :cond_0

    .line 25
    check-cast p1, Lcom/miui/maml/elements/CircleScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/CircleScreenElement;->access$000(Lcom/miui/maml/elements/CircleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p0

    float-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setVelocity(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setVelocityValue(Ljava/lang/Object;F)V
    .locals 0

    .line 21
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/CircleScreenElement$1;->setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method
