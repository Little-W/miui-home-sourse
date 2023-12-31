.class public abstract Lcom/miui/home/launcher/ScreenView$IndicatorView;
.super Landroid/widget/FrameLayout;
.source "ScreenView.java"

# interfaces
.implements Lcom/miui/home/launcher/ScreenView$Indicator;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "IndicatorView"
.end annotation


# instance fields
.field private mScreenIndicator:Lcom/miui/home/launcher/ScreenView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 592
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 593
    new-instance v0, Lcom/miui/home/launcher/ScreenView;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView$IndicatorView;->mScreenIndicator:Lcom/miui/home/launcher/ScreenView;

    .line 594
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$IndicatorView;->mScreenIndicator:Lcom/miui/home/launcher/ScreenView;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public addScreenIndicatorPoint(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .line 611
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$IndicatorView;->mScreenIndicator:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected getScreenIndicator()Lcom/miui/home/launcher/ScreenView;
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$IndicatorView;->mScreenIndicator:Lcom/miui/home/launcher/ScreenView;

    return-object p0
.end method

.method public getScreenIndicatorPoint(I)Landroid/view/View;
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$IndicatorView;->mScreenIndicator:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getScreenIndicatorPointCount()I
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$IndicatorView;->mScreenIndicator:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getScreenIndicatorPointIndex(Landroid/view/View;)I
    .locals 0

    .line 607
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$IndicatorView;->mScreenIndicator:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getChildIndex(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 636
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->requestLayout()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    return-void
.end method

.method public removeScreenIndicatorPoint(I)V
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$IndicatorView;->mScreenIndicator:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->removeScreen(I)V

    return-void
.end method

.method public removeScreenIndicatorPoint(II)V
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$IndicatorView;->mScreenIndicator:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->removeScreensInLayout(II)V

    return-void
.end method

.method public setScreenIndicatorLayoutMode(I)V
    .locals 0

    .line 623
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$IndicatorView;->mScreenIndicator:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setScreenLayoutMode(I)V

    return-void
.end method
