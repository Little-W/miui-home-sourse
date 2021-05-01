.class Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;
.super Ljava/lang/Object;
.source "FolderCling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderCling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelEmptySpaceLongClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderCling;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 652
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$1600(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/OnLongClickAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    return-void
.end method
