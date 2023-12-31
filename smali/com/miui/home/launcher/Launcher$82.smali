.class Lcom/miui/home/launcher/Launcher$82;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->notifyFsGestureHomeStatus(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$enableBackGesture:Z

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;ZLjava/lang/String;)V
    .locals 0

    .line 9350
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$82;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-boolean p2, p0, Lcom/miui/home/launcher/Launcher$82;->val$enableBackGesture:Z

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$82;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 9353
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$82;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher$82;->val$enableBackGesture:Z

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$82;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowVisibilityState(ZLjava/lang/String;)V

    return-void
.end method
