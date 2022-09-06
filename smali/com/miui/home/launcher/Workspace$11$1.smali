.class Lcom/miui/home/launcher/Workspace$11$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace$11;->accept(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Workspace$11;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace$11;)V
    .locals 0

    .line 2604
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$11$1;->this$1:Lcom/miui/home/launcher/Workspace$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    .line 2607
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$11$1;->this$1:Lcom/miui/home/launcher/Workspace$11;

    iget-object v1, v1, Lcom/miui/home/launcher/Workspace$11;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2608
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$11$1;->this$1:Lcom/miui/home/launcher/Workspace$11;

    iget-object v1, v1, Lcom/miui/home/launcher/Workspace$11;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2610
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->relayoutByOccupiedCells()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2613
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$11$1;->this$1:Lcom/miui/home/launcher/Workspace$11;

    iget-object v0, v0, Lcom/miui/home/launcher/Workspace$11;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->checkAllScreensToSelfDelete()V

    .line 2614
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$11$1;->this$1:Lcom/miui/home/launcher/Workspace$11;

    iget-object v0, v0, Lcom/miui/home/launcher/Workspace$11;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onReorganizeFinished(Landroid/content/Context;)V

    return-void
.end method
