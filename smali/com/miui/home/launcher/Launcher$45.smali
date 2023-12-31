.class Lcom/miui/home/launcher/Launcher$45;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 4325
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$45;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 4328
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$45;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4331
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$45;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isElderlyManEnable(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p1, p0, 0x1

    .line 4332
    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->enableHomeSetting(Z)V

    .line 4333
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->setElderlyManModeEnable(Z)V

    return-void
.end method
