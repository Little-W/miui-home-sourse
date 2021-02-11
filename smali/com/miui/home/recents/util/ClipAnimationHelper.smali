.class public Lcom/miui/home/recents/util/ClipAnimationHelper;
.super Ljava/lang/Object;
.source "ClipAnimationHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;,
        Lcom/miui/home/recents/util/ClipAnimationHelper$_lancet;
    }
.end annotation


# instance fields
.field private mBoostModeTargetLayers:I

.field private mClipRectF:Landroid/graphics/RectF;

.field private mCurrentRect:Landroid/graphics/RectF;

.field private mCurrentRectWithInsets:Landroid/graphics/RectF;

.field public final mHomeStackBounds:Landroid/graphics/Rect;

.field private final mSourceInsets:Landroid/graphics/Rect;

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mSourceStackBounds:Landroid/graphics/Rect;

.field private final mSourceWindowClipInsets:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private applySurfaceParams(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->scheduleApply([Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    goto :goto_1

    .line 236
    :cond_0
    new-instance p1, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    .line 237
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 238
    invoke-static {p1, v2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(Lcom/android/systemui/shared/recents/system/TransactionCompat;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 241
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    :goto_1
    return-void
.end method

.method private updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 82
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 83
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method private updateStackBoundsToMultiWindowTaskSize(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Z)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Z)Landroid/graphics/RectF;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 156
    :cond_0
    iget v3, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    .line 157
    iget v4, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    mul-float/2addr v4, v3

    .line 159
    iget-object v5, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 160
    iput v6, v5, Landroid/graphics/RectF;->top:F

    if-eqz p3, :cond_1

    .line 161
    iget-object v7, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    goto :goto_0

    :cond_1
    iget-object v7, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    :goto_0
    iput v7, v5, Landroid/graphics/RectF;->right:F

    .line 162
    iget-object v5, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    if-eqz p3, :cond_2

    iget-object v7, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v3, v7

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    :goto_1
    iput v3, v5, Landroid/graphics/RectF;->bottom:F

    .line 164
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    .line 165
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 166
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    add-float/2addr v5, v7

    iput v5, v3, Landroid/graphics/RectF;->top:F

    if-eqz p3, :cond_4

    .line 169
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 170
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v5, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    iget-object v7, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    iget-object v7, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 172
    :cond_4
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 173
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    iget-object v7, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v4, v7

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 176
    :goto_3
    iget-object v3, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-nez v3, :cond_5

    .line 177
    iget-object v1, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    return-object v1

    .line 180
    :cond_5
    iget-object v3, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v3, v3

    new-array v3, v3, [Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    const/4 v4, 0x0

    move v5, v4

    .line 182
    :goto_4
    iget-object v7, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v7, v7

    if-ge v5, v7, :cond_9

    .line 183
    iget-object v7, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v7, v7, v5

    .line 184
    iget-object v8, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v9, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget-object v10, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 185
    iget-object v15, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 186
    invoke-virtual {v15, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 189
    iget v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    invoke-static {v7, v9}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->getLayer(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)I

    move-result v16

    .line 190
    iget v9, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    iget v10, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    if-ne v9, v10, :cond_8

    .line 191
    iget v8, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    .line 192
    iget v9, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    .line 193
    iget v10, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    .line 194
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 195
    iget-object v10, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v11, Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-direct {v11, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v12, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    sget-object v13, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 196
    iget-object v10, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v11, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget-object v12, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    .line 198
    :cond_6
    iget-object v10, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v11, Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-direct {v11, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v12, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    sget-object v13, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 199
    iget-object v10, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v11, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget-object v12, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 201
    :goto_5
    iget-object v10, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v10, v15}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    :cond_7
    move/from16 v17, v8

    move v13, v9

    goto :goto_6

    :cond_8
    move/from16 v17, v6

    move v13, v8

    .line 207
    :goto_6
    new-instance v8, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    iget-object v12, v7, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v14, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object v11, v8

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;-><init>(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;FLandroid/graphics/Matrix;Landroid/graphics/Rect;IF)V

    aput-object v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 210
    :cond_9
    iget-object v1, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, v1, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applySurfaceParams(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getCurrentRectWithInsets()Landroid/graphics/RectF;

    move-result-object v1

    return-object v1
.end method

.method public fromTaskThumbnailView(Lcom/miui/home/recents/views/TaskViewThumbnail;Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 7

    .line 246
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    const/4 v2, 0x2

    .line 249
    new-array v3, v2, [I

    .line 250
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DragLayer;->getLocationOnScreen([I)V

    .line 251
    iget-object v3, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p3, :cond_0

    .line 254
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->shouldUseMultiWindowTaskSizeStrategy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    invoke-direct {p0, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateStackBoundsToMultiWindowTaskSize(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 259
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 263
    :goto_0
    new-array v0, v2, [F

    .line 264
    invoke-static {p1, p2, v0, v6, v6}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 265
    new-instance p2, Landroid/graphics/Rect;

    aget v1, v0, v6

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    aget v4, v0, v6

    .line 266
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

    .line 268
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    if-nez p3, :cond_2

    .line 274
    iget-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    .line 275
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    mul-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->left:F

    .line 276
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->top:F

    mul-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 277
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->right:F

    mul-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 278
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method public getCurrentRectWithInsets()Landroid/graphics/RectF;
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 217
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

    .line 218
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSourceRect()Landroid/graphics/RectF;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSourceStackBounds()Landroid/graphics/Rect;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTargetRect()Landroid/graphics/RectF;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public modifyRectFToHome(Landroid/graphics/RectF;)V
    .locals 3

    .line 227
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

    .line 222
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

    .line 145
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    return-void
.end method

.method public updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 110
    invoke-direct {p0, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    const-string p1, "ClipAnimationHelper"

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateSourceStack  mSourceInsets="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mSourceStackBounds="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mHomeStackBounds="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateStackBoundsToMultiWindowTaskSize(Landroid/content/Context;)V
    .locals 3

    .line 92
    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getSystemUiProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-string v0, "ClipAnimationHelper"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStackBoundsToMultiWindowTaskSize  bound=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    return-void
.end method

.method public updateTargetRect(Landroid/graphics/Rect;)V
    .locals 8

    .line 117
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 118
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 119
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 117
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 126
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 127
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    .line 128
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    .line 127
    invoke-static {v0, v1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 129
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 130
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    .line 131
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 132
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 133
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 134
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 130
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const-string v0, "ClipAnimationHelper"

    .line 137
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

    invoke-static {v0, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
