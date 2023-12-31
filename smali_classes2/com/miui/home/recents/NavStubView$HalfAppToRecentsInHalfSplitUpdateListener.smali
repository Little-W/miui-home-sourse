.class Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HalfAppToRecentsInHalfSplitUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 5420
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onUpdate$0$NavStubView$HalfAppToRecentsInHalfSplitUpdateListener(F)V
    .locals 1

    .line 5435
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5436
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$6600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    :cond_0
    return-void
.end method

.method public onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 9

    const/4 v0, 0x0

    .line 5423
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6500(Lcom/miui/home/recents/NavStubView;)F

    .line 5430
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5431
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5200(Lcom/miui/home/recents/NavStubView;)F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$5200(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float v4, v0, v1

    .line 5432
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$4100(Lcom/miui/home/recents/NavStubView;)I

    move-result v7

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6700(Lcom/miui/home/recents/NavStubView;)I

    move-result v8

    move-object v3, p1

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/miui/home/recents/NavStubView;->updateHalfSplitTaskPosition(Landroid/graphics/RectF;FFFII)Landroid/graphics/RectF;

    .line 5434
    :cond_0
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p3, Lcom/miui/home/recents/-$$Lambda$NavStubView$HalfAppToRecentsInHalfSplitUpdateListener$bu0D1J9ImKnYxtpb1dZXdighHz4;

    invoke-direct {p3, p0, p2}, Lcom/miui/home/recents/-$$Lambda$NavStubView$HalfAppToRecentsInHalfSplitUpdateListener$bu0D1J9ImKnYxtpb1dZXdighHz4;-><init>(Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;F)V

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
