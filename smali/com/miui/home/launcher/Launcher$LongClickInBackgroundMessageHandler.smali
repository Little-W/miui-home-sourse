.class Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongClickInBackgroundMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 9383
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 9383
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LongClickInBackgroundMessage;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 9386
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 9389
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    const/16 v0, 0x8

    new-instance v1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v2, "event_long_click_in_edit"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILcom/miui/home/launcher/EditStateChangeReason;)V

    .line 9390
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackLongPressToEditMode(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
