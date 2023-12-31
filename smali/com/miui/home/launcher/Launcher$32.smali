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

    .line 4111
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$32;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 4114
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$32;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4117
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$32;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->updateIsDefaultIcon(Landroid/content/Context;)V

    return-void
.end method
