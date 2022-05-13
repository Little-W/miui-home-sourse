.class Lcom/miui/home/launcher/ThumbnailMeasureController;
.super Ljava/lang/Object;
.source "ThumbnailMeasureController.java"


# instance fields
.field private mEditingHeight:I

.field private mWidth:I

.field private mWorkspaceHeight:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->reloadWorkspaceHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mWorkspaceHeight:I

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->reloadEditingHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mEditingHeight:I

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->reloadWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mWidth:I

    return-void
.end method

.method private reloadEditingHeight()I
    .locals 1

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottomInEditMode()I

    move-result v0

    return v0
.end method

.method private reloadWidth()I
    .locals 1

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method private reloadWorkspaceHeight()I
    .locals 1

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorThumbnailHeight()I

    move-result v0

    return v0
.end method

.method private updateThumbnails(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->reloadWorkspaceHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mWorkspaceHeight:I

    .line 49
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->reloadEditingHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mEditingHeight:I

    .line 50
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->reloadWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mWidth:I

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected makeEditingEntryHeightMeasureSpec()I
    .locals 2

    .line 29
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mEditingHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected makeWidthMeasureSpec()I
    .locals 2

    .line 25
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected makeWorkspaceHeightMeasureSpec()I
    .locals 2

    .line 21
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailMeasureController;->mWorkspaceHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method onScreenOrientationChanged(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailMeasureController;->updateThumbnails(Landroid/view/View;)V

    return-void
.end method

.method onScreenSizeChanged(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailMeasureController;->updateThumbnails(Landroid/view/View;)V

    return-void
.end method
