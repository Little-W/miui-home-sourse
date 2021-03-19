.class abstract Lcom/miui/maml/ActionCommand$NotificationReceiver;
.super Lcom/miui/maml/ActionCommand$StatefulActionCommand;
.source "ActionCommand.java"

# interfaces
.implements Lcom/miui/maml/NotifierManager$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NotificationReceiver"
.end annotation


# instance fields
.field private mNotifierManager:Lcom/miui/maml/NotifierManager;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    .line 103
    iput-object p3, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lcom/miui/maml/NotifierManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    return-void
.end method


# virtual methods
.method protected asyncUpdate()V
    .locals 2

    .line 113
    invoke-static {}, Lcom/miui/maml/ActionCommand;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/ActionCommand$NotificationReceiver$1;

    invoke-direct {v1, p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver$1;-><init>(Lcom/miui/maml/ActionCommand$NotificationReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public finish()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->releaseNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public init()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->update()V

    .line 124
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->acquireNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->asyncUpdate()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->pause(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->update()V

    .line 135
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->resume(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method protected abstract update()V
.end method
