.class Lcom/miui/home/launcher/Launcher$37;
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

    .line 4183
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$37;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$onChange$0(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 4191
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$1$Launcher$37(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 4192
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$37;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 3

    .line 4186
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$37;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4189
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$37;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$3800(Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;

    move-result-object p1

    .line 4190
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$37;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "light_speed_app"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$3802(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;

    .line 4191
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$37;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3900(Lcom/miui/home/launcher/Launcher;)Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$37$DQLxHXJ2HchGfBmnGAHLsuA1ODc;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$37$DQLxHXJ2HchGfBmnGAHLsuA1ODc;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/Launcher;->access$4000(Lcom/miui/home/launcher/Launcher;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 4192
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$37;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApps()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$37$Iq5g1v8De0p1OWCBqIPjULcax24;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$37$Iq5g1v8De0p1OWCBqIPjULcax24;-><init>(Lcom/miui/home/launcher/Launcher$37;)V

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/Launcher;->access$4000(Lcom/miui/home/launcher/Launcher;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method
