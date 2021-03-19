.class Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditModeItemClickedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 1731
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V
    .locals 0

    .line 1731
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;-><init>(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/EditModeItemClickedMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1734
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    .line 1735
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->needShowLastEmptyScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1736
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    goto :goto_0

    .line 1738
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    .line 1739
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->needShowLastEmptyScreen()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1740
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->checkToDeleteSelf()V

    :cond_1
    :goto_0
    return-void
.end method
