.class Lcom/miui/home/launcher/Launcher$1$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$1;

.field final synthetic val$lastSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$1;Lcom/miui/home/launcher/IBackAnimView;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$1$1;->this$1:Lcom/miui/home/launcher/Launcher$1;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$1$1;->val$lastSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$1$1;->this$1:Lcom/miui/home/launcher/Launcher$1;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$1;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$1$1;->val$lastSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    if-eq v0, v1, :cond_0

    .line 604
    invoke-interface {v1}, Lcom/miui/home/launcher/IBackAnimView;->resetBackAnim()V

    :cond_0
    return-void
.end method
