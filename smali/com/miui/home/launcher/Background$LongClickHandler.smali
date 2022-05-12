.class Lcom/miui/home/launcher/Background$LongClickHandler;
.super Ljava/lang/Object;
.source "Background.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Background;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Background;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Background;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/miui/home/launcher/Background$LongClickHandler;->this$0:Lcom/miui/home/launcher/Background;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Background;Lcom/miui/home/launcher/Background$1;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Background$LongClickHandler;-><init>(Lcom/miui/home/launcher/Background;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LongClickMessage;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 114
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/miui/home/launcher/Background$LongClickHandler;->this$0:Lcom/miui/home/launcher/Background;

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LongClickMessage;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Background;->touchedAtValidArea(F)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 120
    :cond_3
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 123
    :cond_4
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LongClickMessage;->getWho()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 124
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LongClickMessage;->getWho()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "long_click"

    .line 125
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditMode(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LongClickInBackgroundMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/LongClickInBackgroundMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/Background$LongClickHandler;->this$0:Lcom/miui/home/launcher/Background;

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LongClickMessage;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LongClickMessage;->getRawY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/Background;->startSpreadCircle(FF)V

    :cond_6
    return-void

    :cond_7
    :goto_0
    return-void
.end method
