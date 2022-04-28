.class public Lcom/android/systemui/shared/recents/system/TransactionCompat;
.super Ljava/lang/Object;
.source "TransactionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException;
    }
.end annotation


# static fields
.field private static final HAS_METHOD_DEFER_ANIMATION:Z


# instance fields
.field final mTmpValues:[F

.field final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 39
    const-class v0, Landroid/view/SurfaceControl$Transaction;

    const-string v1, "deferAnimation"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 40
    invoke-static {v2, v4}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/SurfaceControl;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    .line 39
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    move v6, v7

    .line 41
    :cond_0
    sput-boolean v6, Lcom/android/systemui/shared/recents/system/TransactionCompat;->HAS_METHOD_DEFER_ANIMATION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 35
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTmpValues:[F

    .line 45
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public deferAnimation(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 9

    .line 174
    sget-boolean v0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->HAS_METHOD_DEFER_ANIMATION:Z

    if-eqz v0, :cond_0

    .line 175
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const-string v3, "deferAnimation"

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v6, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    aput-object p1, v6, v7

    .line 176
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v8

    .line 175
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public deferTransactionUntilSurface(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/view/Surface;J)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntilSurface(Landroid/view/SurfaceControl;Landroid/view/Surface;J)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public hide(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public remove(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-object p0
.end method

.method public reparent(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object p0

    .line 157
    :cond_0
    new-instance p1, Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parent invalid -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_1
    new-instance p2, Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sc invalid -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setAlpha(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setColor(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;[F)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setCornerRadius(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 112
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeup()Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-object p0
.end method

.method public setLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setMatrix(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;FFFF)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 6

    .line 85
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

    .line 90
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTmpValues:[F

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setPosition(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;FF)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setRelativeLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-object p0
.end method

.method public setSize(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;II)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setWindowCrop(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public tryReparent(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    .locals 0

    .line 140
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->reparent(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;
    :try_end_0
    .catch Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException;->printStackTrace()V

    :goto_0
    return-object p0
.end method
