.class Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;->onMessageEvent(Lcom/miui/home/launcher/common/messages/LongClickInBackgroundMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;)V
    .locals 0

    .line 8754
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler$1;->this$1:Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .line 8757
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler$1;->this$1:Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 8758
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler$1;->this$1:Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackLongPressToEditMode(Lcom/miui/home/launcher/Launcher;)V

    const/4 v0, 0x0

    return v0
.end method
