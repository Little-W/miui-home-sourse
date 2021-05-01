.class Lcom/miui/home/launcher/Launcher$66;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->setCurSelectedIcon(Lcom/miui/home/launcher/IBackAnimView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$icon:Lcom/miui/home/launcher/IBackAnimView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;)V
    .locals 0

    .line 7043
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$66;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$66;->val$icon:Lcom/miui/home/launcher/IBackAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 7046
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$66;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7047
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$66;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$402(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 7048
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$66;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$8900(Lcom/miui/home/launcher/Launcher;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 7049
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$66;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$402(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 7051
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$66;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$66;->val$icon:Lcom/miui/home/launcher/IBackAnimView;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$202(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;)Lcom/miui/home/launcher/IBackAnimView;

    return-void
.end method
