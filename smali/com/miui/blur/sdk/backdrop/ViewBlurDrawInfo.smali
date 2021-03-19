.class public interface abstract Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;
.super Ljava/lang/Object;
.source "ViewBlurDrawInfo.java"

# interfaces
.implements Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;


# virtual methods
.method public getBlurOutline(Landroid/graphics/Outline;)V
    .locals 3

    .line 45
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getWidth()I

    move-result v0

    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    :goto_0
    return-void
.end method

.method public getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 2

    .line 30
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 31
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 32
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getBlurStyleNightMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getBlurStyleDayMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getBlurStyleDayMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 1

    .line 36
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    return-object v0
.end method

.method public getBlurStyleNightMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 1

    .line 40
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    return-object v0
.end method

.method public getBlurViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    .line 17
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getOutlineProvider()Landroid/view/ViewOutlineProvider;
.end method

.method public abstract getViewRootImpl()Landroid/view/ViewRootImpl;
.end method
