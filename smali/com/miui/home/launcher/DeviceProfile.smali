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
.field private final TAG:Ljava/lang/String;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCellWorkingHeight:I

.field private mCellWorkingWidth:I

.field private mDPC:Lcom/miui/home/launcher/DeviceConfig;

.field private mDeviceMaxSize:I

.field private mDeviceMinSize:I

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
.method public constructor <init>(IIIILcom/miui/home/launcher/DeviceConfig;Landroid/content/Context;)V
    .locals 3

    const-string v0, "dpc"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeviceProfile"

    .line 16
    iput-object v0, p0, Lcom/miui/home/launcher/DeviceProfile;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mDeviceMaxSize:I

    .line 18
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mDeviceMinSize:I

    .line 19
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    .line 20
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    .line 21
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    .line 22
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    .line 23
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    .line 24
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    .line 25
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    .line 27
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenLongSize:I

    .line 28
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenShortSize:I

    .line 32
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellWidth:I

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "Application.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsListCellWidth:I

    .line 34
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellHeight:I

    .line 41
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellContentHeight:I

    .line 44
    invoke-virtual {p0, p1, p2, p6}, Lcom/miui/home/launcher/DeviceProfile;->initScreenSize(IILandroid/content/Context;)V

    .line 45
    iput-object p5, p0, Lcom/miui/home/launcher/DeviceProfile;->mDPC:Lcom/miui/home/launcher/DeviceConfig;

    .line 46
    invoke-static {p3, p4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mDeviceMaxSize:I

    .line 47
    invoke-static {p3, p4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mDeviceMinSize:I

    return-void
.end method


# virtual methods
.method public final calculateCellSize(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
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

    .line 115
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

    .line 116
    iget p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    div-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mWidgetCellWidth:I

    .line 117
    iget p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingTop:I

    sub-int/2addr p1, v0

    .line 118
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    sub-int/2addr p1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    div-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinHeight:I

    .line 117
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mWidgetCellHeight:I

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string v0, "Application.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 120
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellWidth:I

    .line 121
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellHeight:I

    const v0, 0x7f0700ad

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070200

    .line 123
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 122
    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellContentHeight:I

    .line 125
    iget-object p1, p0, Lcom/miui/home/launcher/DeviceProfile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateCellSize: mCellWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mCellHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mCellWorkingWidth  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mCellWorkingHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getCellHeight()I
    .locals 0

    .line 205
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellHeight:I

    return p0
.end method

.method public final getCellWidth()I
    .locals 0

    .line 209
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWidth:I

    return p0
.end method

.method public final getCellWorkingHeight()I
    .locals 0

    .line 181
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    return p0
.end method

.method public final getCellWorkingWidth()I
    .locals 0

    .line 189
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    return p0
.end method

.method public final getDeviceHeight()I
    .locals 1

    .line 153
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mDeviceMinSize:I

    goto :goto_0

    .line 156
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mDeviceMaxSize:I

    :goto_0
    return p0
.end method

.method public final getDeviceMaxSize()I
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mDeviceMaxSize:I

    return p0
.end method

.method public final getDeviceMinSize()I
    .locals 0

    .line 149
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mDeviceMinSize:I

    return p0
.end method

.method public final getDeviceWidth()I
    .locals 1

    .line 137
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mDeviceMaxSize:I

    goto :goto_0

    .line 140
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mDeviceMinSize:I

    :goto_0
    return p0
.end method

.method public final getHotSeatsCellContentHeight()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellContentHeight:I

    return p0
.end method

.method public final getHotSeatsCellHeight()I
    .locals 0

    .line 221
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellHeight:I

    return p0
.end method

.method public final getHotSeatsCellListWidth()I
    .locals 0

    .line 217
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsListCellWidth:I

    return p0
.end method

.method public final getHotSeatsCellWidth()I
    .locals 0

    .line 213
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mHotSeatsCellWidth:I

    return p0
.end method

.method public final getRealScreenHeight()I
    .locals 0

    .line 169
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    return p0
.end method

.method public final getScreenHeight()I
    .locals 0

    .line 165
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    return p0
.end method

.method public final getScreenLongSize()I
    .locals 0

    .line 173
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenLongSize:I

    return p0
.end method

.method public final getScreenShortSize()I
    .locals 0

    .line 177
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenShortSize:I

    return p0
.end method

.method public final getScreenWidth()I
    .locals 0

    .line 161
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    return p0
.end method

.method public final getSoscSplitProfile(Landroid/content/Context;Lcom/miui/launcher/sosc/module/SoscEvent;)Lcom/miui/home/launcher/DeviceProfile;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "soscEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object v0, p2, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 234
    iget-object p2, p2, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 236
    new-instance v1, Lcom/miui/home/launcher/DeviceProfile$Builder;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/DeviceProfile$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {v1, v0, p2}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setScreenSize(II)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object p1

    .line 238
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeviceProfile;->getDeviceWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/DeviceProfile;->getDeviceHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setDeviceSize(II)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object p1

    .line 239
    iget-object p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mDPC:Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setDeviceConfig(Lcom/miui/home/launcher/DeviceConfig;)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object p0

    .line 240
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeviceProfile$Builder;->build()Lcom/miui/home/launcher/DeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public final initScreenSize(IILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    .line 96
    invoke-static {p3}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 97
    iget p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    div-int/lit8 p3, p3, 0x2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v0

    goto :goto_0

    .line 99
    :cond_0
    iget p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    .line 96
    iput p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    .line 101
    iput p2, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    .line 102
    iget p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    iput p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    .line 103
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenLongSize:I

    .line 104
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenShortSize:I

    .line 106
    iget-object p1, p0, Lcom/miui/home/launcher/DeviceProfile;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "calculateCellSize: mScreenWidth "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " , mScreenHeight = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " , mCellWorkingWidth  = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget p3, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " , mCellWorkingHeight = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget p0, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setCellWorkingHeight(I)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingHeight:I

    return-void
.end method

.method public final setCellWorkingWidth(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mCellWorkingWidth:I

    return-void
.end method

.method public final subNavigationBarHeight(Landroid/content/Context;)V
    .locals 1

    .line 197
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    goto :goto_0

    .line 200
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenHeight:I

    :goto_0
    return-void
.end method

.method public final updateDeviceSize(IILandroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/DeviceProfile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceSize: small = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , large = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mRealScreenHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget v0, p0, Lcom/miui/home/launcher/DeviceProfile;->mRealScreenHeight:I

    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile;->mScreenWidth:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    if-eq v1, p2, :cond_2

    .line 82
    :cond_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/miui/home/launcher/DeviceProfile;->initScreenSize(IILandroid/content/Context;)V

    return v2

    :cond_1
    if-ne v0, p2, :cond_3

    if-eq v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 87
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/DeviceProfile;->initScreenSize(IILandroid/content/Context;)V

    return v2
.end method
