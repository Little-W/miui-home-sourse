.class public Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeWatcherReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver$_lancet;
    }
.end annotation


# static fields
.field private static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field private static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"


# instance fields
.field private final listener:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;


# direct methods
.method public constructor <init>(Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;->listener:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "homekey"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "recentapps"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;->listener:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;->onHomeKeyPressed()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomeWatcherReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
