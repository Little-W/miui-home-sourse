.class Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;
.super Ljava/lang/Object;
.source "AnimatingDrawableCompat.java"


# direct methods
.method static getAnimationIndex(Landroid/graphics/drawable/Drawable;I)I
    .locals 1

    .line 35
    instance-of v0, p0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Lcom/miui/maml/AnimatingDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->getAnimIndex()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method static getFancyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 21
    instance-of v0, p0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Lcom/miui/maml/AnimatingDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->getFancyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getQuietDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 28
    instance-of v0, p0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v0, :cond_0

    .line 29
    check-cast p0, Lcom/miui/maml/AnimatingDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getStartDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 14
    instance-of v0, p0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v0, :cond_0

    .line 15
    check-cast p0, Lcom/miui/maml/AnimatingDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static isInstance(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lcom/miui/maml/AnimatingDrawable;

    return p0
.end method

.method static isOnlyFancyWork(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 42
    instance-of v0, p0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Lcom/miui/maml/AnimatingDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->isOnlyFancyWork()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isOnlyQuietWork(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 49
    instance-of v0, p0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v0, :cond_0

    .line 50
    check-cast p0, Lcom/miui/maml/AnimatingDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->isOnlyQuietWork()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
