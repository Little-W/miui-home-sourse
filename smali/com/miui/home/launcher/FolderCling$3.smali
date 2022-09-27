.class Lcom/miui/home/launcher/FolderCling$3;
.super Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;
.source "FolderCling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderCling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderCling;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$3;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 604
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getCurrentEditState()I

    move-result v0

    .line 605
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->getLastEditState()I

    move-result p1

    .line 606
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 607
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling$3;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    if-ne p1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-ne v0, v2, :cond_1

    .line 609
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing(I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    if-nez v1, :cond_2

    if-eqz p1, :cond_6

    .line 611
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$3;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$1100(Lcom/miui/home/launcher/FolderCling;Z)V

    .line 612
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$3;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    .line 613
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$3;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/Folder;->setPressed(Z)V

    .line 614
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$3;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/FolderCling;->setPressed(Z)V

    .line 615
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$3;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object p1

    .line 616
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$3;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v0

    .line 617
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    if-ge v4, v0, :cond_4

    .line 619
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 620
    instance-of v5, v2, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v5, :cond_3

    .line 621
    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(ZZ)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 625
    :cond_4
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    goto :goto_3

    :cond_5
    const/4 v1, 0x5

    .line 626
    :goto_3
    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;-><init>(I)V

    .line 625
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
