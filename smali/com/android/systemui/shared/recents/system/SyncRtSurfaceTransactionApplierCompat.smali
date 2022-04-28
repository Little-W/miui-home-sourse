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
.field private static final MSG_UPDATE_SEQUENCE_NUMBER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SyncRtSurfaceTransactionApplierCompat"

.field public static sHwuiTaskTid0:I

.field public static sHwuiTaskTid1:I


# instance fields
.field private mAfterApplyCallback:Ljava/lang/Runnable;

.field private final mApplyHandler:Landroid/os/Handler;

.field private final mBarrierSurfaceController:Landroid/view/SurfaceControl;

.field private mPendingSequenceNumber:I

.field private mSequenceNumber:I

.field private final mTargetSurface:Landroid/view/Surface;

.field private final mTargetViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    .line 52
    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    .line 63
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetSurface:Landroid/view/Surface;

    .line 64
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mBarrierSurfaceController:Landroid/view/SurfaceControl;

    .line 66
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mApplyHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->onApplyMessage(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->isSurfaceOrSurfaceControllerValid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mApplyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;ZJ[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(ZJ[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/ViewRootImpl;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method public static applyParams(Lcom/android/systemui/shared/recents/system/TransactionCompat;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 2

    .line 195
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->isShow:Z

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setMatrix(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Matrix;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 197
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setWindowCrop(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 200
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->alpha:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 202
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->layer:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 204
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget v1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->cornerRadius:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setCornerRadius(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 205
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->deferAnimation(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 208
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    goto :goto_0

    .line 210
    :cond_3
    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->remove(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    :goto_0
    return-void
.end method

.method private varargs applyParams(ZJ[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 5

    .line 89
    new-instance v0, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    .line 90
    array-length v1, p4

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 91
    aget-object v2, p4, v1

    .line 93
    iget-object v3, v2, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 99
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3, v4, p2, p3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->deferTransactionUntilSurface(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/view/Surface;J)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 102
    :cond_1
    invoke-static {v0, v2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(Lcom/android/systemui/shared/recents/system/TransactionCompat;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v2, "SyncRtSurfaceTransactionApplierCompat"

    const-string v3, "Error! param.surface is not valid"

    .line 95
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 105
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

    .line 222
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 228
    :cond_1
    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method private isSurfaceOrSurfaceControllerValid()Z
    .locals 3

    .line 160
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mBarrierSurfaceController:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method private onApplyMessage(I)V
    .locals 1

    .line 79
    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    .line 80
    iget p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    .line 83
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAfterApplyCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    iget v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    if-ne v0, v1, :cond_1

    .line 176
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 179
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 182
    :cond_2
    new-instance v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    :goto_0
    return-void

    .line 172
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public varargs scheduleApply([Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    .line 121
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    .line 123
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v5, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;

    invoke-direct {v5, p0, v0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;I[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$3;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 143
    :catch_0
    invoke-direct {p0, v3, v1, v2, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(ZJ[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    return-void

    .line 116
    :cond_1
    :goto_0
    invoke-direct {p0, v3, v1, v2, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(ZJ[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    return-void
.end method
