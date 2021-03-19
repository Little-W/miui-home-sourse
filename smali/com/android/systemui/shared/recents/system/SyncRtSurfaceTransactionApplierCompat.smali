.class public Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplierCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_SEQUENCE_NUMBER:I


# instance fields
.field private mAfterApplyCallback:Ljava/lang/Runnable;

.field private final mApplyHandler:Landroid/os/Handler;

.field private mPendingSequenceNumber:I

.field private mSequenceNumber:I

.field private final mTargetSurface:Landroid/view/Surface;

.field private final mTargetViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    .line 44
    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    .line 52
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetSurface:Landroid/view/Surface;

    .line 54
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mApplyHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->onApplyMessage(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/Surface;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mApplyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;ZJ[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(ZJ[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/ViewRootImpl;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method public static applyParams(Lcom/android/systemui/shared/recents/system/TransactionCompat;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 2

    .line 156
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->isShow:Z

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setMatrix(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Matrix;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 158
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setWindowCrop(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 161
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->alpha:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 163
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->layer:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 165
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->cornerRadius:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setCornerRadius(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 166
    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    goto :goto_0

    .line 168
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->remove(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    :goto_0
    return-void
.end method

.method private varargs applyParams(ZJ[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 5

    .line 77
    new-instance v0, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    .line 78
    array-length v1, p4

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 79
    aget-object v2, p4, v1

    .line 81
    iget-object v3, v2, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz p1, :cond_0

    .line 83
    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3, v4, p2, p3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->deferTransactionUntil(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/view/Surface;J)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 85
    :cond_0
    invoke-static {v0, v2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(Lcom/android/systemui/shared/recents/system/TransactionCompat;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 88
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    return-void
.end method

.method public static create(Landroid/view/View;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 180
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method private onApplyMessage(I)V
    .locals 1

    .line 67
    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    .line 68
    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    .line 71
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAfterApplyCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    iget v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    if-ne v0, v1, :cond_1

    .line 137
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 140
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 143
    :cond_2
    new-instance v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    :goto_0
    return-void

    .line 133
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public varargs scheduleApply([Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    .line 104
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    .line 105
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v2, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;I[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 120
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$3;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 99
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(ZJ[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    return-void
.end method
