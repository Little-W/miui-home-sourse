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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    .line 43
    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    .line 51
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetSurface:Landroid/view/Surface;

    .line 53
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mApplyHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->onApplyMessage(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/Surface;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mApplyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static applyParams(Lcom/android/systemui/shared/recents/system/TransactionCompat;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 2

    .line 138
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setMatrix(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Matrix;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 139
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setWindowCrop(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 142
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->alpha:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 143
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->layer:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 144
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->cornerRadius:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setCornerRadius(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 145
    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

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

    .line 156
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method private onApplyMessage(I)V
    .locals 1

    .line 66
    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    .line 67
    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    .line 70
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAfterApplyCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 118
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    iget v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    if-ne v0, v1, :cond_0

    .line 119
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 122
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 125
    :cond_1
    new-instance v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$3;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public varargs scheduleApply([Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    .line 86
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    .line 87
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v2, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;I[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 111
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
