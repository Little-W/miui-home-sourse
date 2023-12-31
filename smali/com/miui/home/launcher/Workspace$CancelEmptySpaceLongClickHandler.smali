.class Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelEmptySpaceLongClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 3735
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V
    .locals 0

    .line 3735
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;-><init>(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 3738
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p0}, Lcom/miui/home/launcher/Workspace;->access$1800(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/OnLongClickAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    return-void
.end method
