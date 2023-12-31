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

.field public isClipFromLeftOrTop:Z

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

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 702
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    const/4 v0, 0x0

    .line 708
    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->currentRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 710
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    .line 711
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    .line 712
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 713
    iput v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    .line 714
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->clipProgress:F

    .line 715
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    .line 716
    iput v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    const/4 v0, 0x1

    .line 717
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    .line 718
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isClipFromLeftOrTop:Z

    .line 719
    iput v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    return-void
.end method


# virtual methods
.method public getSyncTransactionApplier()Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    return-object p0
.end method

.method public setClipFromLeftOrTop(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 733
    iput-boolean p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isClipFromLeftOrTop:Z

    return-object p0
.end method

.method public setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 771
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->clipProgress:F

    return-object p0
.end method

.method public setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 776
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    return-object p0
.end method

.method public setRatio(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 766
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    return-object p0
.end method

.method public setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 1

    .line 738
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    .line 739
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    .line 740
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    .line 741
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

    .line 723
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    return-object p0
.end method

.method public setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    return-object p0
.end method

.method public setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 781
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    return-object p0
.end method

.method public setVerticalClip(Ljava/lang/Boolean;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 728
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    return-object p0
.end method

.method public setWidth(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 761
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    return-object p0
.end method

.method public setX(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 751
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    return-object p0
.end method

.method public setY(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 756
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    return-object p0
.end method
