.class public Lmiuix/animation/styles/StyleFactory;
.super Ljava/lang/Object;
.source "StyleFactory.java"


# direct methods
.method public static createAnimStyle(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/styles/PropertyStyle;
    .locals 1

    .line 23
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    if-ne p2, v0, :cond_0

    .line 24
    new-instance p2, Lmiuix/animation/styles/ForegroundColorStyle;

    invoke-direct {p2, p1}, Lmiuix/animation/styles/ForegroundColorStyle;-><init>(Ljava/lang/Object;)V

    move-object v0, p2

    goto :goto_1

    .line 25
    :cond_0
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    if-eq p2, v0, :cond_2

    instance-of v0, p2, Lmiuix/animation/property/ColorProperty;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lmiuix/animation/styles/PropertyStyle;

    invoke-direct {v0, p1, p2}, Lmiuix/animation/styles/PropertyStyle;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    new-instance v0, Lmiuix/animation/styles/ColorStyle;

    invoke-direct {v0, p1, p2}, Lmiuix/animation/styles/ColorStyle;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    .line 30
    :goto_1
    invoke-virtual {v0, p0}, Lmiuix/animation/styles/PropertyStyle;->setTarget(Lmiuix/animation/IAnimTarget;)V

    .line 31
    invoke-virtual {v0, p3}, Lmiuix/animation/styles/PropertyStyle;->setConfig(Lmiuix/animation/base/AnimConfigLink;)V

    return-object v0
.end method
