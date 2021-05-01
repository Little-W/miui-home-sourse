.class public Lcom/miui/home/recents/util/ClipAnimationHelper;
.super Ljava/lang/Object;
.source "ClipAnimationHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    }
.end annotation


# instance fields
.field private mBoostModeTargetLayers:I

.field private mClipRectF:Landroid/graphics/RectF;

.field private mCurrentRect:Landroid/graphics/RectF;

.field private mCurrentRectWithInsets:Landroid/graphics/RectF;

.field public final mHomeStackBounds:Landroid/graphics/Rect;

.field private mIsUseForHomeGesture:Z

.field private final mSourceInsets:Landroid/graphics/Rect;

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mSourceStackBounds:Landroid/graphics/Rect;

.field private final mSourceWindowClipInsets:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mIsUseForHomeGesture:Z

    return-void
.end method

.method private applySurfaceParams(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->scheduleApply([Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    goto :goto_1

    .line 245
    :cond_0
    new-instance p1, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    .line 246
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 247
    invoke-static {p1, v2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(Lcom/android/systemui/shared/recents/system/TransactionCompat;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 250
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    :goto_1
    return-void
.end method

.method private isIgnoreTranslateSurface()Z
    .locals 2

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mIsUseForHomeGesture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateStackBoundsToMultiWindowTaskSize(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 141
    :cond_0
    iget v4, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    .line 142
    iget v5, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    mul-float/2addr v5, v4

    .line 144
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 145
    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 146
    iget-boolean v8, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    :goto_0
    iput v8, v6, Landroid/graphics/RectF;->right:F

    .line 147
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    iget-boolean v8, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v4, v8

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    :goto_1
    iput v4, v6, Landroid/graphics/RectF;->bottom:F

    .line 149
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    .line 150
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v6, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 151
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v6, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    add-float/2addr v6, v8

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 153
    iget-boolean v4, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    if-eqz v4, :cond_4

    .line 154
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 155
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget v6, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    iget-object v8, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v8

    iget-object v8, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 157
    :cond_4
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v5

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    .line 158
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget-object v8, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    iget-object v8, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v5, v8

    add-float/2addr v6, v5

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 161
    :goto_3
    iget-object v4, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-nez v4, :cond_5

    .line 162
    iget-object v1, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    return-object v1

    .line 165
    :cond_5
    iget-object v4, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v4, v4

    new-array v4, v4, [Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    const/4 v5, 0x0

    move v6, v5

    .line 167
    :goto_4
    iget-object v8, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v8, v8

    if-ge v6, v8, :cond_c

    .line 168
    iget-object v8, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 169
    iget-object v8, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v8, v8, v6

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isIgnoreTranslateSurface()Z

    move-result v9

    if-nez v9, :cond_6

    .line 171
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v10, v8, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget-object v11, v8, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 173
    :cond_6
    iget-object v9, v8, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 174
    invoke-virtual {v9, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    const/high16 v10, 0x3f800000    # 1.0f

    .line 177
    iget v11, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    invoke-static {v8, v11}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->getLayer(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)I

    move-result v17

    .line 178
    iget v11, v8, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    iget v12, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    const/4 v13, 0x2

    if-ne v11, v12, :cond_a

    .line 179
    iget v10, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    .line 180
    iget v11, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    .line 181
    iget v12, v8, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    if-eq v12, v13, :cond_9

    .line 182
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 183
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1e

    if-lt v12, v13, :cond_7

    .line 184
    new-instance v12, Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-direct {v12, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 185
    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    iget-object v14, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 186
    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v12, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    sget-object v15, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v13, v14, v12, v15}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_5

    .line 188
    :cond_7
    iget-object v12, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v13, Landroid/graphics/RectF;

    iget-object v14, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-direct {v13, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v14, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    sget-object v15, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v12, v13, v14, v15}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 189
    iget-object v12, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    .line 192
    :cond_8
    iget-object v12, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v13, Landroid/graphics/RectF;

    iget-object v14, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-direct {v13, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v14, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    sget-object v15, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v12, v13, v14, v15}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 193
    iget-object v12, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v13, v8, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    iget-object v14, v8, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 195
    :goto_5
    iget-object v12, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v9}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    :cond_9
    move/from16 v18, v10

    move v14, v11

    goto :goto_6

    .line 197
    :cond_a
    iget v11, v8, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    if-ne v11, v13, :cond_b

    if-eqz v3, :cond_b

    .line 198
    iget v10, v3, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v11

    if-nez v11, :cond_b

    .line 200
    iget-object v11, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v12, v3, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    iget v13, v3, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    iget-object v14, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :cond_b
    move/from16 v18, v7

    move v14, v10

    .line 206
    :goto_6
    new-instance v10, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    iget-object v13, v8, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v15, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object v12, v10

    move-object/from16 v16, v9

    invoke-direct/range {v12 .. v18}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;-><init>(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;FLandroid/graphics/Matrix;Landroid/graphics/Rect;IF)V

    aput-object v10, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 209
    :cond_c
    iget-object v1, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, v1, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applySurfaceParams(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getCurrentRectWithInsets()Landroid/graphics/RectF;

    move-result-object v1

    return-object v1
.end method

.method public fromTaskThumbnailView(Lcom/miui/home/recents/views/TaskViewThumbnail;Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 6

    .line 255
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    const/4 v2, 0x2

    .line 258
    new-array v3, v2, [I

    .line 259
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DragLayer;->getLocationOnScreen([I)V

    .line 260
    iget-object v3, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p3, :cond_0

    .line 263
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->shouldUseMultiWindowTaskSizeStrategy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    invoke-direct {p0, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateStackBoundsToMultiWindowTaskSize(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 268
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 271
    :goto_0
    new-array v0, v2, [F

    .line 272
    invoke-static {p1, p2, v0, v5, v5}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 273
    new-instance p2, Landroid/graphics/Rect;

    aget v1, v0, v5

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    aget v4, v0, v5

    .line 274
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    aget v0, v0, v2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p2, v1, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 276
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    if-nez p3, :cond_2

    .line 282
    iget-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    .line 283
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    mul-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->left:F

    .line 284
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->top:F

    mul-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 285
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->right:F

    mul-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 286
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method public getCurrentRectWithInsets()Landroid/graphics/RectF;
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 224
    invoke-direct {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isIgnoreTranslateSurface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSourceRect()Landroid/graphics/RectF;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSourceStackBounds()Landroid/graphics/Rect;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTargetRect()Landroid/graphics/RectF;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public modifyRectFToHome(Landroid/graphics/RectF;)V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public modifyRectFToSource(Landroid/graphics/RectF;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public prepareAnimation(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 130
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    return-void
.end method

.method public setIsUseForHomeGesture(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mIsUseForHomeGesture:Z

    return-void
.end method

.method public updateHomeStack(Landroid/graphics/Rect;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-string p1, "ClipAnimationHelper"

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHomeStack  mSourceInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHomeStackBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 80
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 81
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    const-string p1, "ClipAnimationHelper"

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSourceStack  mSourceInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceStackBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateTargetRect(Landroid/graphics/Rect;)V
    .locals 8

    .line 102
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 103
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 104
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 102
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 111
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 112
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    .line 113
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    .line 112
    invoke-static {v0, v1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 114
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 115
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 117
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 118
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 119
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 115
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const-string v0, "ClipAnimationHelper"

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTargetRect  mSourceRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   mTargetRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   mSourceWindowClipInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   mHomeStackBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   targetRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
