.class Lcom/miui/home/recents/views/TaskStackViewTouchHandler$2;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onChildDismissedEnd(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$2;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$2;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-static {v0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->access$600(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Lcom/miui/home/recents/views/TaskStackViewScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$2;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-static {v1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->access$500(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackViewScroller;->animateScroll(FLjava/lang/Runnable;)V

    return-void
.end method
