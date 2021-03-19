.class public Lcom/android/systemui/shared/recents/system/TransactionCompat;
.super Ljava/lang/Object;
.source "TransactionCompat.java"


# instance fields
.field final mTmpValues:[F

.field final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 29
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTmpValues:[F

    .line 32
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public deferTransactionUntil(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/os/IBinder;J)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public deferTransactionUntil(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/view/Surface;J)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntilSurface(Landroid/view/SurfaceControl;Landroid/view/Surface;J)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public hide(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public remove(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-object p0
.end method

.method public reparent(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-object p0
.end method

.method public setAlpha(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setColor(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;[F)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setCornerRadius(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeup()Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setMatrix(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;FFFF)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setMatrix(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Matrix;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTmpValues:[F

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setPosition(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;FF)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setRelativeLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-object p0
.end method

.method public setSize(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;II)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setWindowCrop(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method
