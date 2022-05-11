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

    .line 3964
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$DualClockObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 3965
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 3970
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3971
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$DualClockObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$4300(Lcom/miui/home/launcher/Launcher;Z)V

    return-void
.end method
