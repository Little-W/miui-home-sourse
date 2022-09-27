.class Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;
.super Landroid/database/ContentObserver;
.source "LauncherCallbacksGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherCallbacksGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistantSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    .line 65
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

    .line 70
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$000(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/LauncherAssistantCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$100(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/LauncherAssistantCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAssistantCompat;->destroyLauncherClient()V

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$300(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->newInstance(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherAssistantCompat;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$202(Lcom/miui/home/launcher/LauncherCallbacksGlobal;Lcom/miui/home/launcher/LauncherAssistantCompat;)Lcom/miui/home/launcher/LauncherAssistantCompat;

    .line 74
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$500(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/LauncherAssistantCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$400(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->createLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$700(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/LauncherAssistantCompat;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$600(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$800(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$900(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/LauncherAssistantCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onStart()V

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$1000(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$1100(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/LauncherAssistantCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onResume()V

    :cond_2
    return-void
.end method
