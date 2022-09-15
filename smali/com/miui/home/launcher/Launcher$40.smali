.class Lcom/miui/home/launcher/Launcher$40;
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

    .line 4007
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 4010
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isElderlyManEnable(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->setElderlyManModeEnable(Z)V

    return-void
.end method
