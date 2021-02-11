.class public Lmiuix/animation/styles/ForegroundColorStyle;
.super Lmiuix/animation/styles/ColorStyle;
.source "ForegroundColorStyle.java"


# instance fields
.field private mTintMode:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 24
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    invoke-direct {p0, p1, v0}, Lmiuix/animation/styles/ColorStyle;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method private getView()Landroid/view/View;
    .locals 2

    .line 61
    invoke-virtual {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    .line 62
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Lmiuix/animation/ViewTarget;

    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isInvalid(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 69
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected doSetConfig(Lmiuix/animation/base/AnimConfigLink;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Lmiuix/animation/styles/ColorStyle;->doSetConfig(Lmiuix/animation/base/AnimConfigLink;)V

    .line 30
    iget-object v0, p0, Lmiuix/animation/styles/ForegroundColorStyle;->mToTag:Ljava/lang/Object;

    iget-object v1, p0, Lmiuix/animation/styles/ForegroundColorStyle;->mProperty:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p1, v0, v1}, Lmiuix/animation/base/AnimConfigLink;->getTintMode(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)I

    move-result p1

    iput p1, p0, Lmiuix/animation/styles/ForegroundColorStyle;->mTintMode:I

    return-void
.end method

.method protected onEnd()V
    .locals 2

    .line 46
    invoke-super {p0}, Lmiuix/animation/styles/ColorStyle;->onEnd()V

    .line 47
    invoke-direct {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getView()Landroid/view/View;

    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {v0}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getCurrentIntValue()I

    move-result v1

    .line 54
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 55
    invoke-virtual {v0}, Lmiuix/animation/styles/TintDrawable;->restoreOriginalDrawable()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 35
    invoke-super {p0}, Lmiuix/animation/styles/ColorStyle;->onStart()V

    .line 36
    invoke-direct {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getView()Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-static {v0}, Lmiuix/animation/styles/TintDrawable;->setAndGet(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object v0

    .line 41
    iget v1, p0, Lmiuix/animation/styles/ForegroundColorStyle;->mTintMode:I

    invoke-virtual {v0, p0, v1}, Lmiuix/animation/styles/TintDrawable;->initTintBuffer(Lmiuix/animation/styles/PropertyStyle;I)V

    return-void
.end method
