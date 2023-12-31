.class public interface abstract Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
.super Ljava/lang/Object;
.source "LaunchAppAndBackHomeAnimTarget.java"


# virtual methods
.method public endFolmeAnim()V
    .locals 0

    return-void
.end method

.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeightDiffBetweenImageAndImageView()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIconImageView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconImageViewOriginalLocation()Landroid/graphics/Rect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconRadius()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIconTransparentEdge()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWidthDiffBetweenImageAndImageView()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBigIcon()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLauncherView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTargetAttachedToWindow()Z
    .locals 1

    .line 54
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 55
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needChangeIconAlpha()Z
    .locals 0

    const/4 p0, 0x0

    return p0
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
    .locals 1

    .line 93
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onLaunchAppAnimStart()V
    .locals 1

    .line 77
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onLaunchAppWindowAlphaChange(F)V
    .locals 1

    .line 83
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public resetImageViewVisibility()V
    .locals 0

    return-void
.end method
