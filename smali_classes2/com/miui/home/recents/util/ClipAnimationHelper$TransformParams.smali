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

.field public isVerticalClip:Z

.field public launcherStateNormal:Z

.field public radius:F

.field public ratio:F

.field public scale:F

.field syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

.field public targetAlpha:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->currentRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 329
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    .line 330
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    .line 331
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 332
    iput v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    .line 333
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->clipProgress:F

    .line 334
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    .line 335
    iput v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    .line 337
    iput v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    return-void
.end method


# virtual methods
.method public setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 384
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->clipProgress:F

    return-object p0
.end method

.method public setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 389
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    return-object p0
.end method

.method public setRatio(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 379
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    return-object p0
.end method

.method public setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 1

    .line 351
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    .line 352
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    .line 353
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    .line 354
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float p1, v0, p1

    :goto_0
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    return-object p0
.end method

.method public setScale(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 341
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    return-object p0
.end method

.method public setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    return-object p0
.end method

.method public setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 394
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    return-object p0
.end method

.method public setVerticalClip(Ljava/lang/Boolean;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 346
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    return-object p0
.end method

.method public setWidth(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 374
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    return-object p0
.end method

.method public setX(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 364
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    return-object p0
.end method

.method public setY(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 369
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    return-object p0
.end method