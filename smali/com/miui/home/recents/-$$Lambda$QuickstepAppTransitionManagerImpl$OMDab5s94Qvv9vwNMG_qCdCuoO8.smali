.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/TaskView;

.field private final synthetic f$1:F

.field private final synthetic f$2:F

.field private final synthetic f$3:Z

.field private final synthetic f$4:Lcom/miui/home/recents/views/RecentsView;

.field private final synthetic f$5:Landroid/graphics/RectF;

.field private final synthetic f$6:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/TaskView;FFZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$0:Lcom/miui/home/recents/views/TaskView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$1:F

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$2:F

    iput-boolean p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$3:Z

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$4:Lcom/miui/home/recents/views/RecentsView;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$5:Landroid/graphics/RectF;

    iput-object p7, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$6:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$0:Lcom/miui/home/recents/views/TaskView;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$1:F

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$2:F

    iget-boolean v3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$3:Z

    iget-object v4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$4:Lcom/miui/home/recents/views/RecentsView;

    iget-object v5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$5:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;->f$6:Landroid/graphics/RectF;

    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startClosingWindowToRecentsAnimators$4(Lcom/miui/home/recents/views/TaskView;FFZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method
