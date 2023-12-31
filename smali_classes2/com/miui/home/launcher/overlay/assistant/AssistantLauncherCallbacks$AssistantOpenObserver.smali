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

    .line 182
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;

    .line 183
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;

    iget-object p1, p1, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;

    iget-object p1, p1, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->updateLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    :cond_0
    return-void
.end method
