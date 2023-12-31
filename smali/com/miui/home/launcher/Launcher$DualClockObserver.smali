.class Lcom/miui/home/launcher/Launcher$DualClockObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualClockObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 4351
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$DualClockObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 4352
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 4357
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$DualClockObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4360
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$DualClockObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->access$4600(Lcom/miui/home/launcher/Launcher;Z)V

    return-void
.end method
