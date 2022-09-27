.class Lcom/miui/home/launcher/ThumbnailHeightController;
.super Ljava/lang/Object;
.source "ThumbnailHeightController.java"


# instance fields
.field private mHeight:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailHeightController;->reloadHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailHeightController;->mHeight:I

    return-void
.end method

.method private reloadHeight()I
    .locals 1

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottomInEditMode()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected makeMeasureSpec()I
    .locals 2

    .line 17
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailHeightController;->mHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method onScreenOrientationChanged(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailHeightController;->reloadHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailHeightController;->mHeight:I

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method onScreenSizeChanged(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailHeightController;->reloadHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailHeightController;->mHeight:I

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
