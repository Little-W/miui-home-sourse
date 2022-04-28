.class Lcom/miui/home/launcher/ThumbnailMeasureController;
.super Ljava/lang/Object;
.source "ThumbnailMeasureController.java"


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->reloadHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mHeight:I

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->reloadWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mWidth:I

    return-void
.end method

.method private reloadHeight()I
    .locals 1

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottomInEditMode()I

    move-result v0

    return v0
.end method

.method private reloadWidth()I
    .locals 1

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method private updateThumbnails(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->reloadHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mHeight:I

    .line 39
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->reloadWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mWidth:I

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected makeHeightMeasureSpec()I
    .locals 2

    .line 19
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected makeWidthMeasureSpec()I
    .locals 2

    .line 23
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method onScreenOrientationChanged(Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailMeasureController;->updateThumbnails(Landroid/view/View;)V

    return-void
.end method

.method onScreenSizeChanged(Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailMeasureController;->updateThumbnails(Landroid/view/View;)V

    return-void
.end method
