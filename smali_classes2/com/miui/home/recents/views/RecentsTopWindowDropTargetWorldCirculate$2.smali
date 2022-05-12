.class Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentsTopWindowDropTargetWorldCirculate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->startAppToWorldCirculate(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

.field final synthetic val$taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;->this$0:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;->val$taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 130
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;->this$0:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    iget-object p1, p1, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->TAG:Ljava/lang/String;

    const-string v0, "startAppToWorldCirculate = onAnimationCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;->this$0:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->access$200(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;)Ljava/util/function/BiConsumer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2$2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2$2;-><init>(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;)V

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 114
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;->this$0:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->access$200(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;)Ljava/util/function/BiConsumer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2$1;-><init>(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$2;)V

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p1, "appToWorldCirculateAim"

    .line 125
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    return-void
.end method
