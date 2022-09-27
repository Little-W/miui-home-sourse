.class public final Lcom/miui/home/launcher/DeviceProfile;
.super Ljava/lang/Object;
.source "DeviceProfile.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DeviceProfile$Builder;,
        Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;
    }
.end annotation


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mCellWorkingHeight:I

.field private mCellWorkingWidth:I

.field private mDPC:Lcom/miui/home/launcher/DeviceConfig;

.field private mRealScreenHeight:I

.field private mScreenHeight:I

.field private mScreenLongSize:I

.field private mScreenShortSize:I

.field private mScreenWidth:I

.field private mWidgetCellHeight:I

.field private mWidgetCellWidth:I


# direct methods
.method public constructor <init>(IILcom/miui/home/launcher/DeviceConfig;)V
    .locals 1

    const-string v0, "dpc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    .line 14
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    .line 15
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    .line 16
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    .line 17
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    .line 18
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    .line 19
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    .line 21
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenLongSize:I

    .line 22
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenShortSize:I

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/DeviceProfile;->initScreenSize(II)V

    .line 29
    iput-object p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mDPC:Lcom/miui/home/launcher/DeviceConfig;

    return-void
.end method


# virtual methods
.method public final calculateCellSize()V
    .locals 4

    .line 77
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHorizontalSpacing()I

    move-result v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    .line 78
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellVerticalSpacing()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    .line 79
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    div-int/2addr v0, v1

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mWidgetCellWidth:I

    .line 80
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingTop:I

    sub-int/2addr v0, v1

    .line 81
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    div-int/2addr v0, v1

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinHeight:I

    .line 80
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mWidgetCellHeight:I

    return-void
.end method

.method public final getCellHeight()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    return v0
.end method

.method public final getCellWidth()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    return v0
.end method

.method public final getCellWorkingHeight()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    return v0
.end method

.method public final getCellWorkingWidth()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    return v0
.end method

.method public final getDeviceHeight()I
    .locals 2

    .line 89
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getDeviceWidth()I
    .locals 2

    .line 85
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final getRealScreenHeight()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    return v0
.end method

.method public final getScreenHeight()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    return v0
.end method

.method public final getScreenLongSize()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenLongSize:I

    return v0
.end method

.method public final getScreenWidth()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    return v0
.end method

.method public final initScreenSize(II)V
    .locals 2

    .line 68
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    .line 69
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    .line 70
    iput p2, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    .line 71
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenLongSize:I

    .line 73
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenShortSize:I

    return-void
.end method

.method public final setCellWorkingHeight(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    return-void
.end method

.method public final subNavigationBarHeight(Landroid/content/Context;)V
    .locals 1

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    :cond_0
    return-void
.end method

.method public final updateDeviceSize(II)Z
    .locals 3

    .line 53
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    if-eq v1, p2, :cond_2

    .line 55
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/DeviceProfile;->initScreenSize(II)V

    return v2

    :cond_1
    if-ne v0, p2, :cond_3

    if-eq v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 60
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/DeviceProfile;->initScreenSize(II)V

    return v2
.end method
