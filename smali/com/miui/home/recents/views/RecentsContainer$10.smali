.class Lcom/miui/home/recents/views/RecentsContainer$10;
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

    .line 637
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$10;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 651
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$10;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentsContainer;->access$1000(Lcom/miui/home/recents/views/RecentsContainer;)V

    return-void
.end method
