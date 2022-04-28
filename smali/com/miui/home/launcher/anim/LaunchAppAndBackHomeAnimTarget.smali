.class public interface abstract Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
.super Ljava/lang/Object;
.source "LaunchAppAndBackHomeAnimTarget.java"


# virtual methods
.method public endFolmeAnim()V
    .locals 0

    return-void
.end method

.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconImageView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconImageViewOriginalLocation()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconRadius()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIconTransparentEdge()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needChangeIconAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onEnterHomeAnimFinish()V
    .locals 0

    return-void
.end method

.method public onEnterHomeAnimStart()V
    .locals 0

    return-void
.end method

.method public onLaunchAppAnimEnd()V
    .locals 2

    .line 63
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onLaunchAppAnimStart()V
    .locals 2

    .line 47
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onLaunchAppWindowAlphaChange(F)V
    .locals 2

    .line 53
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
