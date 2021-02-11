.class public Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
.super Ljava/lang/Object;
.source "ClipAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/ClipAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformParams"
.end annotation


# instance fields
.field public clipProgress:F

.field currentRect:Landroid/graphics/RectF;

.field public launcherStateNormal:Z

.field public radius:F

.field public ratio:F

.field syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

.field public targetAlpha:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->currentRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    .line 312
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    .line 313
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 314
    iput v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    .line 315
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->clipProgress:F

    .line 316
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    .line 317
    iput v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    return-void
.end method


# virtual methods
.method public setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 341
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->clipProgress:F

    return-object p0
.end method

.method public setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 346
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    return-object p0
.end method

.method public setRatio(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 336
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    return-object p0
.end method

.method public setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    return-object p0
.end method

.method public setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 351
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    return-object p0
.end method

.method public setWidth(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 331
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    return-object p0
.end method

.method public setX(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 321
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    return-object p0
.end method

.method public setY(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 326
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    return-object p0
.end method
