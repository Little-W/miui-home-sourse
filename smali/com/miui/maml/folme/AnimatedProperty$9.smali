.class final Lcom/miui/maml/folme/AnimatedProperty$9;
.super Lcom/miui/maml/folme/AnimatedProperty;
.source "AnimatedProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/folme/AnimatedProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/miui/maml/folme/AnimatedProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/maml/elements/AnimatedScreenElement;)F
    .locals 2

    .line 180
    iget-object p1, p1, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 167
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/folme/AnimatedProperty$9;->getValue(Lcom/miui/maml/elements/AnimatedScreenElement;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .locals 2

    .line 175
    iget-object p1, p1, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 167
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/AnimatedProperty$9;->setValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method

.method public setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .locals 2

    .line 170
    iget-object p1, p1, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/folme/PropertyWrapper;->setVelocity(D)V

    return-void
.end method

.method public bridge synthetic setVelocityValue(Ljava/lang/Object;F)V
    .locals 0

    .line 167
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/AnimatedProperty$9;->setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method
