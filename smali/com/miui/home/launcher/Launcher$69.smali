.class Lcom/miui/home/launcher/Launcher$69;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 7847
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$69;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 7850
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$69;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7851
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$69;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$300(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7852
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$69;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/IBackAnimView;->onBackAnimStart()V

    .line 7854
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$69;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    const-string v1, "back_home_start"

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/IBackAnimView;->updateBackAnim(Ljava/lang/String;)V

    .line 7855
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$69;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$102(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 7856
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$69;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$402(Lcom/miui/home/launcher/Launcher;Z)Z

    :cond_1
    return-void
.end method
