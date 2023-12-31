.class public Lcom/miui/home/launcher/NormalState;
.super Lcom/miui/home/launcher/LauncherState;
.source "NormalState.java"


# static fields
.field private static TAG:Ljava/lang/String; = "NormalState"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherState;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onExitState(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherState;->onExitState(Lcom/miui/home/launcher/Launcher;)V

    .line 24
    sget-object p0, Lcom/miui/home/launcher/NormalState;->TAG:Ljava/lang/String;

    const-string p1, "onExitState"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStateEnabled(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherState;->onStateEnabled(Lcom/miui/home/launcher/Launcher;)V

    .line 18
    sget-object p0, Lcom/miui/home/launcher/NormalState;->TAG:Ljava/lang/String;

    const-string p1, "onStateEnabled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
