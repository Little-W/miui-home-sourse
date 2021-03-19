.class public Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;
.super Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;
.source "AssistantLauncherOverlay.java"


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method
