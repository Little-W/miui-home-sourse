.class public final Landroidx/core/widget/EdgeEffectCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/EdgeEffectCompat$Api31Impl;
    }
.end annotation


# direct methods
.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;
    .locals 1

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Landroid/widget/EdgeEffect;

    invoke-direct {p1, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public static getDistance(Landroid/widget/EdgeEffect;)F
    .locals 1

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onPull(Landroid/widget/EdgeEffect;FF)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_0
    return-void
.end method

.method public static onPullDistance(Landroid/widget/EdgeEffect;FF)F
    .locals 1

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    return p1
.end method
