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

.field private final mHotSeatsListCellWidth:I

.field private mRealScreenHeight:I

.field private mScreenHeight:I

.field private mScreenLongSize:I

.field private mScreenShortSize:I

.field private mScreenWidth:I

.field private mWidgetCellHeight:I

.field private mWidgetCellWidth:I


# direct methods
.method public constructor <init>(IILcom/miui/home/launcher/DeviceConfig;Landroid/content/Context;)V
    .locals 3

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
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "Application.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07019b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsListCellWidth:I

    .line 29
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellHeight:I

    .line 36
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellContentHeight:I

    .line 39
    invoke-virtual {p0, p1, p2, p4}, Lcom/miui/home/launcher/DeviceProfile;->initScreenSize(IILandroid/content/Context;)V

    .line 40
    iput-object p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mDPC:Lcom/miui/home/launcher/DeviceConfig;

    return-void
.end method


# virtual methods
.method public final calculateCellSize(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHorizontalSpacing()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    .line 86
    iget p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellVerticalSpacing()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    .line 87
    iget p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    div-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mWidgetCellWidth:I

    .line 88
    iget p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingTop:I

    sub-int/2addr p1, v0

    .line 89
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    sub-int/2addr p1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    div-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinHeight:I

    .line 88
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mWidgetCellHeight:I

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string v0, "Application.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 91
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellWidth:I

    .line 92
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellHeight:I

    const v0, 0x7f0700a3

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0701aa

    .line 94
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 93
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellContentHeight:I

    return-void
.end method

.method public final getCellHeight()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    return v0
.end method

.method public final getCellWidth()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    return v0
.end method

.method public final getCellWorkingHeight()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    return v0
.end method

.method public final getCellWorkingWidth()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    return v0
.end method

.method public final getDeviceHeight()I
    .locals 2

    .line 106
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getDeviceWidth()I
    .locals 2

    .line 102
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final getHotSeatsCellContentHeight()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellContentHeight:I

    return v0
.end method

.method public final getHotSeatsCellHeight()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellHeight:I

    return v0
.end method

.method public final getHotSeatsCellListWidth()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsListCellWidth:I

    return v0
.end method

.method public final getHotSeatsCellWidth()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellWidth:I

    return v0
.end method

.method public final getRealScreenHeight()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    return v0
.end method

.method public final getScreenHeight()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    return v0
.end method

.method public final getScreenLongSize()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenLongSize:I

    return v0
.end method

.method public final getScreenWidth()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    return v0
.end method

.method public final initScreenSize(IILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p3

    const-string v0, "Application.getInstance()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 74
    iget p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    div-int/lit8 p3, p3, 0x2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    goto :goto_0

    .line 76
    :cond_0
    iget p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    .line 73
    :goto_0
    iput p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    .line 78
    iput p2, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    .line 79
    iget p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    iput p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    .line 80
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenLongSize:I

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenShortSize:I

    return-void
.end method

.method public final setCellWorkingHeight(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    return-void
.end method

.method public final setCellWorkingWidth(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    return-void
.end method

.method public final subNavigationBarHeight(Landroid/content/Context;)V
    .locals 1

    .line 146
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    :cond_0
    return-void
.end method

.method public final updateDeviceSize(IILandroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/DeviceProfile;->initScreenSize(IILandroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method
