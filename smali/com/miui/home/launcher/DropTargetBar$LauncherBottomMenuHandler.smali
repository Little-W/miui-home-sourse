.class Lcom/miui/home/launcher/DropTargetBar$LauncherBottomMenuHandler;
.super Ljava/lang/Object;
.source "DropTargetBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DropTargetBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherBottomMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DropTargetBar;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/miui/home/launcher/DropTargetBar$LauncherBottomMenuHandler;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/DropTargetBar;Lcom/miui/home/launcher/DropTargetBar$1;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DropTargetBar$LauncherBottomMenuHandler;-><init>(Lcom/miui/home/launcher/DropTargetBar;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar$LauncherBottomMenuHandler;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;->isShow()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/DropTargetBar;->access$1202(Lcom/miui/home/launcher/DropTargetBar;Z)Z

    .line 157
    iget-object p0, p0, Lcom/miui/home/launcher/DropTargetBar$LauncherBottomMenuHandler;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {p0}, Lcom/miui/home/launcher/DropTargetBar;->access$1000(Lcom/miui/home/launcher/DropTargetBar;)V

    return-void
.end method
