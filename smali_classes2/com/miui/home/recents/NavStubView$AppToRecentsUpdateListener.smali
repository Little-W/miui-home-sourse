.class Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;
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
    name = "AppToRecentsUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 3371
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onUpdate$0(Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;F)V
    .locals 2

    .line 3386
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3500(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3387
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 3

    const/4 v0, 0x0

    .line 3374
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$5600(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    mul-float/2addr v0, v2

    .line 3375
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2, v0}, Lcom/miui/home/recents/NavStubView;->access$5700(Lcom/miui/home/recents/NavStubView;F)V

    .line 3381
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3900(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-boolean v0, v0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-eqz v0, :cond_0

    .line 3382
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 3383
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1, p1, v0, p3, p4}, Lcom/miui/home/recents/NavStubView;->access$5800(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    .line 3385
    :cond_0
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p3, Lcom/miui/home/recents/-$$Lambda$NavStubView$AppToRecentsUpdateListener$7KdVxFrLX72ROnWjeQVYfUPzCR0;

    invoke-direct {p3, p0, p2}, Lcom/miui/home/recents/-$$Lambda$NavStubView$AppToRecentsUpdateListener$7KdVxFrLX72ROnWjeQVYfUPzCR0;-><init>(Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;F)V

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
