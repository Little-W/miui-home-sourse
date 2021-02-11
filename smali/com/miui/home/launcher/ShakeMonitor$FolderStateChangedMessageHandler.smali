.class Lcom/miui/home/launcher/ShakeMonitor$FolderStateChangedMessageHandler;
.super Ljava/lang/Object;
.source "ShakeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ShakeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderStateChangedMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ShakeMonitor;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/ShakeMonitor;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/miui/home/launcher/ShakeMonitor$FolderStateChangedMessageHandler;->this$0:Lcom/miui/home/launcher/ShakeMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/ShakeMonitor;Lcom/miui/home/launcher/ShakeMonitor$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShakeMonitor$FolderStateChangedMessageHandler;-><init>(Lcom/miui/home/launcher/ShakeMonitor;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 64
    iget-object p1, p0, Lcom/miui/home/launcher/ShakeMonitor$FolderStateChangedMessageHandler;->this$0:Lcom/miui/home/launcher/ShakeMonitor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/ShakeMonitor;->access$100(Lcom/miui/home/launcher/ShakeMonitor;Ljava/lang/Runnable;)V

    return-void
.end method
