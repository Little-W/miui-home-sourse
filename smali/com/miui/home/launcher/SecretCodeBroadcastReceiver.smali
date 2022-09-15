.class public Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecretCodeBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SecretCodeBroadcastReceiver$_lancet;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private captureHeap(Landroid/content/Context;)V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$SecretCodeBroadcastReceiver$j5OJdGqVogCJvEtWCGMWvlE2KlM;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$SecretCodeBroadcastReceiver$j5OJdGqVogCJvEtWCGMWvlE2KlM;-><init>(Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic lambda$captureHeap$0(Landroid/content/Context;)V
    .locals 2

    const-string v0, "capture home heap complete"

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$captureHeap$1(Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;Landroid/content/Context;)V
    .locals 3

    .line 35
    new-instance v0, Ljava/io/File;

    const-string v1, "hprof"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "home.hprof"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    iget-object v0, p0, Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$SecretCodeBroadcastReceiver$RjNMSxMYZrG-Bv8zJH_17qMoQ3o;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/-$$Lambda$SecretCodeBroadcastReceiver$RjNMSxMYZrG-Bv8zJH_17qMoQ3o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.telephony.action.SECRET_CODE"

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;->captureHeap(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/SecretCodeBroadcastReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/SecretCodeBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
