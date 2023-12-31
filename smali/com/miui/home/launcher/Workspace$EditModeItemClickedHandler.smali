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

    .line 1972
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V
    .locals 0

    .line 1972
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;-><init>(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/EditModeItemClickedMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1975
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->access$600(Lcom/miui/home/launcher/Workspace;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1976
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    goto :goto_0

    .line 1977
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->access$700(Lcom/miui/home/launcher/Workspace;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1978
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p0}, Lcom/miui/home/launcher/Workspace;->access$800(Lcom/miui/home/launcher/Workspace;)V

    :cond_1
    :goto_0
    return-void
.end method
