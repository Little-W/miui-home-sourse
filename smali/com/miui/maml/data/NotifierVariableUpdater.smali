.class public abstract Lcom/miui/maml/data/NotifierVariableUpdater;
.super Lcom/miui/maml/data/VariableUpdater;
.source "NotifierVariableUpdater.java"

# interfaces
.implements Lcom/miui/maml/NotifierManager$OnNotifyListener;


# instance fields
.field protected mNotifierManager:Lcom/miui/maml/NotifierManager;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/miui/maml/data/VariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 15
    iput-object p2, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lcom/miui/maml/NotifierManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    iget-object v1, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->releaseNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public init()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    iget-object v1, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->acquireNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public abstract onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
.end method

.method public pause()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    iget-object v1, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->pause(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    iget-object v1, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->resume(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method
