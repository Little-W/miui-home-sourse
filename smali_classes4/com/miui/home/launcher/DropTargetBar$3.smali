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

    .line 284
    iput-object p1, p0, Lcom/miui/home/launcher/DropTargetBar$3;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ConflictsListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onGainLock()V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/miui/home/launcher/DropTargetBar$3;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {p0}, Lcom/miui/home/launcher/DropTargetBar;->access$1400(Lcom/miui/home/launcher/DropTargetBar;)V

    return-void
.end method

.method public onLoseLock()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar$3;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {v0}, Lcom/miui/home/launcher/DropTargetBar;->access$1300(Lcom/miui/home/launcher/DropTargetBar;)Lcom/miui/home/launcher/UninstallDropTarget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/UninstallDropTarget;->setActive(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar$3;->onReleaseLock()V

    return-void
.end method

.method public onReleaseLock()V
    .locals 1

    .line 299
    iget-object p0, p0, Lcom/miui/home/launcher/DropTargetBar$3;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {p0}, Lcom/miui/home/launcher/DropTargetBar;->access$1500(Lcom/miui/home/launcher/DropTargetBar;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ButtonDropTarget;

    .line 300
    invoke-virtual {v0}, Lcom/miui/home/launcher/ButtonDropTarget;->hideIfNeed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSomeoneReleaseLock()Z
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/miui/home/launcher/DropTargetBar$3;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {p0}, Lcom/miui/home/launcher/DropTargetBar;->access$700(Lcom/miui/home/launcher/DropTargetBar;)V

    const/4 p0, 0x0

    return p0
.end method
