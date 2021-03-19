.class Lcom/miui/home/launcher/DropTargetBar$2;
.super Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;
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

    .line 127
    iput-object p1, p0, Lcom/miui/home/launcher/DropTargetBar$2;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar$2;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getCurrentEditState()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/DropTargetBar;->access$802(Lcom/miui/home/launcher/DropTargetBar;I)I

    .line 131
    iget-object p1, p0, Lcom/miui/home/launcher/DropTargetBar$2;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {p1}, Lcom/miui/home/launcher/DropTargetBar;->access$600(Lcom/miui/home/launcher/DropTargetBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DropTargetBar$2;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {p1}, Lcom/miui/home/launcher/DropTargetBar;->access$700(Lcom/miui/home/launcher/DropTargetBar;)V

    return-void
.end method
