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

    .line 3423
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 3426
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$4400(Lcom/miui/home/launcher/Launcher;)V

    .line 3427
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$36;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$4500(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    return-void
.end method
