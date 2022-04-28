.class Lcom/miui/home/recents/NavStubView$23$1;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView$23;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/recents/NavStubView$23;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView$23;)V
    .locals 0

    .line 4884
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$23$1;->this$1:Lcom/miui/home/recents/NavStubView$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4887
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$23$1;->this$1:Lcom/miui/home/recents/NavStubView$23;

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$8300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$23$1;->this$1:Lcom/miui/home/recents/NavStubView$23;

    iget-object v1, v1, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$8500(Lcom/miui/home/recents/NavStubView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$23$1;->this$1:Lcom/miui/home/recents/NavStubView$23;

    iget-object v2, v2, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$8600(Lcom/miui/home/recents/NavStubView;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->startTopWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
