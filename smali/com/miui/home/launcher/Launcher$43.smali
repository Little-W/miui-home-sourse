.class Lcom/miui/home/launcher/Launcher$43;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->reloadClockIfNeed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 4118
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$43;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-boolean p2, p0, Lcom/miui/home/launcher/Launcher$43;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 4121
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result p1

    .line 4122
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$43;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5700(Lcom/miui/home/launcher/Launcher;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher$43;->val$force:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4127
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4123
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$43;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5700(Lcom/miui/home/launcher/Launcher;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4124
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$43;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/gadget/DualClockUtils;->setDualClockLastModifiedTime(Landroid/content/Context;J)V

    .line 4125
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$43;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/DualClockUtils;->updateBackup(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4118
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$43;->apply(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
