.class Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;
.super Landroid/database/ContentObserver;
.source "AssistantLauncherCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistantOpenObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;)V
    .locals 1

    .line 101
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;

    .line 102
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 107
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->access$000(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;)Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->access$300(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;)Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->access$100(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->access$200(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->setClientOptions(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V

    :cond_0
    return-void
.end method
