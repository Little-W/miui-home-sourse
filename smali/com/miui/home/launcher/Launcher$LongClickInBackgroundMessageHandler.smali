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

    .line 8835
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 8835
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LongClickInBackgroundMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 8838
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v1, "event_long_click_in_edit"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILcom/miui/home/launcher/EditStateChangeReason;)V

    .line 8839
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackLongPressToEditMode(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
