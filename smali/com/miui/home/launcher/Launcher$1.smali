.class Lcom/miui/home/launcher/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
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

    .line 644
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 647
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$100(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 648
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 649
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$300(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/IBackAnimView;->onBackAnimStop()V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$400(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    const-string v1, "back_home_cancel"

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/IBackAnimView;->updateBackAnim(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$300(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    const-string v1, "back_home_finish"

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/IBackAnimView;->updateBackAnim(Ljava/lang/String;)V

    .line 657
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/IBackAnimView;

    if-eqz v0, :cond_3

    .line 658
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$500(Lcom/miui/home/launcher/Launcher;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/Launcher$1$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/Launcher$1$1;-><init>(Lcom/miui/home/launcher/Launcher$1;Lcom/miui/home/launcher/IBackAnimView;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/IBackAnimView;->setTranslationX(F)V

    .line 668
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/IBackAnimView;->setTranslationY(F)V

    .line 669
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$202(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;)Lcom/miui/home/launcher/IBackAnimView;

    .line 671
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$102(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 672
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$302(Lcom/miui/home/launcher/Launcher;Z)Z

    :cond_5
    return-void
.end method
