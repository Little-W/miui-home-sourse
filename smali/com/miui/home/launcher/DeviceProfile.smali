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

.field private mHotSeatsCellContentHeight:I

.field private mHotSeatsCellHeight:I

.field private mHotSeatsCellWidth:I

.field private mRealScreenHeight:I

.field private mScreenHeight:I

.field private mScreenLongSize:I

.field private mScreenShortSize:I

.field private mScreenWidth:I

.field private mWidgetCellHeight:I

.field private mWidgetCellWidth:I


# direct methods
.method public constructor <init>(IILcom/miui/home/launcher/DeviceConfig;Landroid/content/Context;)V
    .locals 1

    const-string v0, "dpc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    .line 15
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    .line 16
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    .line 17
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    .line 18
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    .line 19
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    .line 20
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    .line 22
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenLongSize:I

    .line 23
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenShortSize:I

    .line 27
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellWidth:I

    .line 28
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellHeight:I

    .line 35
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellContentHeight:I

    .line 38
    invoke-virtual {p0, p1, p2, p4}, Lcom/miui/home/launcher/DeviceProfile;->initScreenSize(IILandroid/content/Context;)V

    .line 39
    iput-object p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mDPC:Lcom/miui/home/launcher/DeviceConfig;

    return-void
.end method


# virtual methods
.method public final calculateCellSize(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
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

    .line 92
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

    .line 93
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    div-int/2addr v0, v1

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mWidgetCellWidth:I

    .line 94
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingTop:I

    sub-int/2addr v0, v1

    .line 95
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    div-int/2addr v0, v1

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinHeight:I

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mWidgetCellHeight:I

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "Application.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f07014a

    .line 98
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellWidth:I

    goto :goto_0

    .line 100
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellWidth:I

    .line 102
    :goto_0
    iget p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellHeight:I

    const p1, 0x7f070094

    .line 103
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v1, 0x7f070159

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 103
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellContentHeight:I

    return-void
.end method

.method public final getCellHeight()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    return v0
.end method

.method public final getCellWidth()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    return v0
.end method

.method public final getCellWorkingHeight()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    return v0
.end method

.method public final getCellWorkingWidth()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    return v0
.end method

.method public final getDeviceHeight()I
    .locals 2

    .line 116
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getDeviceWidth()I
    .locals 2

    .line 112
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final getHotSeatsCellContentHeight()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellContentHeight:I

    return v0
.end method

.method public final getHotSeatsCellHeight()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellHeight:I

    return v0
.end method

.method public final getHotSeatsCellWidth()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellWidth:I

    return v0
.end method

.method public final getRealScreenHeight()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    return v0
.end method

.method public final getScreenHeight()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    return v0
.end method

.method public final getScreenLongSize()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenLongSize:I

    return v0
.end method

.method public final getScreenWidth()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    return v0
.end method

.method public final initScreenSize(IILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    .line 79
    invoke-static {p3}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 80
    iget p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    div-int/lit8 p3, p3, 0x2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    goto :goto_0

    .line 82
    :cond_0
    iget p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    .line 79
    :goto_0
    iput p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    .line 84
    iput p2, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    .line 85
    iget p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    iput p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenLongSize:I

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenShortSize:I

    return-void
.end method

.method public final setCellWorkingHeight(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    return-void
.end method

.method public final setCellWorkingWidth(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    return-void
.end method

.method public final subNavigationBarHeight(Landroid/content/Context;)V
    .locals 1

    .line 156
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    :cond_0
    return-void
.end method

.method public final updateDeviceSize(IILandroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    if-eq v1, p2, :cond_2

    .line 65
    :cond_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/miui/home/launcher/DeviceProfile;->initScreenSize(IILandroid/content/Context;)V

    return v2

    :cond_1
    if-ne v0, p2, :cond_3

    if-eq v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 70
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/DeviceProfile;->initScreenSize(IILandroid/content/Context;)V

    return v2
.end method
