.class Lcom/miui/home/recents/views/RecentsContainer$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsContainer;->doClearAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$11;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 833
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$11;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome()V

    .line 834
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$11;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentsContainer;->access$1300(Lcom/miui/home/recents/views/RecentsContainer;)V

    .line 835
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$11;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$1202(Lcom/miui/home/recents/views/RecentsContainer;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 828
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$11;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$1202(Lcom/miui/home/recents/views/RecentsContainer;Z)Z

    return-void
.end method
