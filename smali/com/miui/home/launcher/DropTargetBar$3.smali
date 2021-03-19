.class Lcom/miui/home/launcher/DropTargetBar$3;
.super Lcom/miui/home/launcher/common/ConflictsListenerAdapter;
.source "DropTargetBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DropTargetBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DropTargetBar;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/miui/home/launcher/DropTargetBar$3;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ConflictsListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onGainLock()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar$3;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {v0}, Lcom/miui/home/launcher/DropTargetBar;->access$1400(Lcom/miui/home/launcher/DropTargetBar;)V

    return-void
.end method

.method public onLoseLock()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar$3;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {v0}, Lcom/miui/home/launcher/DropTargetBar;->access$1300(Lcom/miui/home/launcher/DropTargetBar;)Lcom/miui/home/launcher/UninstallDropTarget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/UninstallDropTarget;->setActive(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar$3;->onReleaseLock()V

    return-void
.end method

.method public onReleaseLock()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar$3;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {v0}, Lcom/miui/home/launcher/DropTargetBar;->access$1500(Lcom/miui/home/launcher/DropTargetBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ButtonDropTarget;

    .line 298
    invoke-virtual {v1}, Lcom/miui/home/launcher/ButtonDropTarget;->hideIfNeed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSomeoneReleaseLock()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar$3;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {v0}, Lcom/miui/home/launcher/DropTargetBar;->access$700(Lcom/miui/home/launcher/DropTargetBar;)V

    const/4 v0, 0x0

    return v0
.end method
