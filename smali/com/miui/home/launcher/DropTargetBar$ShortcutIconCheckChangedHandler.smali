.class Lcom/miui/home/launcher/DropTargetBar$ShortcutIconCheckChangedHandler;
.super Ljava/lang/Object;
.source "DropTargetBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DropTargetBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutIconCheckChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DropTargetBar;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/miui/home/launcher/DropTargetBar$ShortcutIconCheckChangedHandler;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/DropTargetBar;Lcom/miui/home/launcher/DropTargetBar$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DropTargetBar$ShortcutIconCheckChangedHandler;-><init>(Lcom/miui/home/launcher/DropTargetBar;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/ShortcutIconCheckChangedMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 123
    iget-object p1, p0, Lcom/miui/home/launcher/DropTargetBar$ShortcutIconCheckChangedHandler;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {p1}, Lcom/miui/home/launcher/DropTargetBar;->access$600(Lcom/miui/home/launcher/DropTargetBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DropTargetBar$ShortcutIconCheckChangedHandler;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {p1}, Lcom/miui/home/launcher/DropTargetBar;->access$700(Lcom/miui/home/launcher/DropTargetBar;)V

    return-void
.end method
