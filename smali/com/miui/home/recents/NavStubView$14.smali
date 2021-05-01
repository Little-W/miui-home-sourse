.class Lcom/miui/home/recents/NavStubView$14;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 2925
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2928
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    .line 2929
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5500(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2930
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenGestureResetTaskView(Lcom/miui/home/launcher/Launcher;Z)V

    :cond_0
    return-void
.end method
