.class Lcom/miui/home/recents/NavStubView$9;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->resetTaskView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$tv:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$9;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/NavStubView$9;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$9;->val$tv:Lcom/miui/home/recents/views/TaskView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    .line 718
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$9;->val$tv:Lcom/miui/home/recents/views/TaskView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskView;->setIgnoreTranslationWhenFindTouchView(Z)V

    return-void
.end method
