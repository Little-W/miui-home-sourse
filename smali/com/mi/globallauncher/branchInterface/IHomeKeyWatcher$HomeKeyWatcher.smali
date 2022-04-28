.class public Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;
.super Ljava/lang/Object;
.source "IHomeKeyWatcher.java"

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeKeyWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;,
        Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;
    }
.end annotation


# instance fields
.field private final mHomeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;


# direct methods
.method public constructor <init>(Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;

    invoke-direct {v0, p1}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;-><init>(Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;)V

    iput-object v0, p0, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;->mHomeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;

    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;->mHomeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public unRegister(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;->mHomeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
