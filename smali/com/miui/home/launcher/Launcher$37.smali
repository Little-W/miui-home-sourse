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

    .line 3897
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$37;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 3900
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$37;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$3300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshSettings()V

    .line 3901
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$37;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$4100(Lcom/miui/home/launcher/Launcher;)V

    .line 3902
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$37;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    return-void
.end method
