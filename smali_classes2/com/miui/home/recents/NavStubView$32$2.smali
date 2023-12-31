.class Lcom/miui/home/recents/NavStubView$32$2;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView$32;->onAnimationCancel(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/recents/NavStubView$32;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView$32;)V
    .locals 0

    .line 7758
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$32$2;->this$1:Lcom/miui/home/recents/NavStubView$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 7761
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$32$2;->this$1:Lcom/miui/home/recents/NavStubView$32;

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView$32;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$10100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$32$2;->this$1:Lcom/miui/home/recents/NavStubView$32;

    iget-object v1, v1, Lcom/miui/home/recents/NavStubView$32;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$5100(Lcom/miui/home/recents/NavStubView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$32$2;->this$1:Lcom/miui/home/recents/NavStubView$32;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$32;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$10300(Lcom/miui/home/recents/NavStubView;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->startTopWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
