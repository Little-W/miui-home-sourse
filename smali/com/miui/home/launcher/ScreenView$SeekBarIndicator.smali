.class public Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;
.super Lcom/miui/home/launcher/ScreenView$IndicatorView;
.source "ScreenView.java"

# interfaces
.implements Lcom/miui/home/launcher/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeekBarIndicator"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 643
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addScreenIndicatorPoint(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .line 640
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->addScreenIndicatorPoint(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic getScreenIndicatorPoint(I)Landroid/view/View;
    .locals 0

    .line 640
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPoint(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getScreenIndicatorPointCount()I
    .locals 0

    .line 640
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPointCount()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getScreenIndicatorPointIndex(Landroid/view/View;)I
    .locals 0

    .line 640
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPointIndex(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic onScreenSizeChanged()V
    .locals 0

    .line 640
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->onScreenSizeChanged()V

    return-void
.end method

.method public bridge synthetic onWallpaperColorChanged()V
    .locals 0

    .line 640
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->onWallpaperColorChanged()V

    return-void
.end method

.method public bridge synthetic removeScreenIndicatorPoint(I)V
    .locals 0

    .line 640
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->removeScreenIndicatorPoint(I)V

    return-void
.end method

.method public bridge synthetic removeScreenIndicatorPoint(II)V
    .locals 0

    .line 640
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->removeScreenIndicatorPoint(II)V

    return-void
.end method

.method public bridge synthetic setScreenIndicatorLayoutMode(I)V
    .locals 0

    .line 640
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setScreenIndicatorLayoutMode(I)V

    return-void
.end method
