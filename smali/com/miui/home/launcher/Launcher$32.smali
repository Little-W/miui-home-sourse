.class Lcom/miui/home/launcher/Launcher$32;
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

    .line 3863
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$32;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$onChange$0(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 3868
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    return-void
.end method

.method public static synthetic lambda$onChange$1(Lcom/miui/home/launcher/Launcher$32;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 3869
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$32;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 3866
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$32;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$3700(Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;

    move-result-object p1

    .line 3867
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$32;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "light_speed_app"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$3702(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;

    .line 3868
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$32;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3800(Lcom/miui/home/launcher/Launcher;)Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$32$Z8yC2AEQjiFWsBmh8MdIOnuRR2Y;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$32$Z8yC2AEQjiFWsBmh8MdIOnuRR2Y;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/Launcher;->access$3900(Lcom/miui/home/launcher/Launcher;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 3869
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$32;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApps()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$32$Zt-KqVnbbT817ndXithMYaaC1Z0;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$32$Zt-KqVnbbT817ndXithMYaaC1Z0;-><init>(Lcom/miui/home/launcher/Launcher$32;)V

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/Launcher;->access$3900(Lcom/miui/home/launcher/Launcher;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method
