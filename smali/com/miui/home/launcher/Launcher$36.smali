.class Lcom/miui/home/launcher/Launcher$36;
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

    .line 4173
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$onChange$0(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 4181
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$1$Launcher$36(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 4182
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 3

    .line 4176
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4179
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$3700(Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;

    move-result-object p1

    .line 4180
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "light_speed_app"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$3702(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;

    .line 4181
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3800(Lcom/miui/home/launcher/Launcher;)Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$36$UddAJ9rv2y0dZHrpdU2vSaIU9UY;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$36$UddAJ9rv2y0dZHrpdU2vSaIU9UY;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/Launcher;->access$3900(Lcom/miui/home/launcher/Launcher;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 4182
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApps()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$36$NfWHkyxtJ5vJp4NDWqPKOo1HPC8;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$36$NfWHkyxtJ5vJp4NDWqPKOo1HPC8;-><init>(Lcom/miui/home/launcher/Launcher$36;)V

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/Launcher;->access$3900(Lcom/miui/home/launcher/Launcher;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method
