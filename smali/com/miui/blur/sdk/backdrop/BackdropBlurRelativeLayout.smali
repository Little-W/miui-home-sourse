.class public Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "BackdropBlurRelativeLayout.java"

# interfaces
.implements Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;


# instance fields
.field private final mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-direct {p1, p0, p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;-><init>(Landroid/view/View;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isBackdropBlurSupported()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->isBackdropBlurSupported()Z

    move-result v0

    return v0
.end method

.method public isBlurEnabledAndSupported()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->isBlurEnabledAndSupported()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 47
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 53
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->onDetachedFromWindow()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onVisibilityAggregated(Z)V

    .line 40
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->onVisibilityAggregated(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->setBlurEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->postInvalidateOnAnimation()V

    return-void
.end method
