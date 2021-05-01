.class Lcom/miui/home/recents/views/TaskStackView$1;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/TaskStackView;->onMessageEvent(Lcom/miui/home/recents/messages/DismissAllTaskViewsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 0

    .line 1192
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackView$1;->this$0:Lcom/miui/home/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1200
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView$1;->this$0:Lcom/miui/home/recents/views/TaskStackView;

    invoke-static {v0}, Lcom/miui/home/recents/views/TaskStackView;->access$000(Lcom/miui/home/recents/views/TaskStackView;)Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeAllTasks()V

    .line 1201
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackView$1;->this$0:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->access$102(Lcom/miui/home/recents/views/TaskStackView;Z)Z

    return-void
.end method
