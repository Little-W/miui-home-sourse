.class public Lcom/miui/launcher/utils/StatusBarClockController;
.super Ljava/lang/Object;
.source "StatusBarClockController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/utils/StatusBarClockController$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarClockController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mH:Lcom/miui/launcher/utils/StatusBarClockController$H;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/miui/launcher/utils/StatusBarClockController;->mContext:Landroid/content/Context;

    .line 20
    new-instance p1, Lcom/miui/launcher/utils/StatusBarClockController$H;

    invoke-direct {p1, p0, p2}, Lcom/miui/launcher/utils/StatusBarClockController$H;-><init>(Lcom/miui/launcher/utils/StatusBarClockController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/launcher/utils/StatusBarClockController;->mH:Lcom/miui/launcher/utils/StatusBarClockController$H;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/launcher/utils/StatusBarClockController;)Landroid/app/StatusBarManager;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/miui/launcher/utils/StatusBarClockController;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/launcher/utils/StatusBarClockController;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/miui/launcher/utils/StatusBarClockController;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/launcher/utils/StatusBarClockController;)Landroid/content/Context;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/miui/launcher/utils/StatusBarClockController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public showOrHideClock(ZLjava/lang/Runnable;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarClockController;->mH:Lcom/miui/launcher/utils/StatusBarClockController$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/launcher/utils/StatusBarClockController$H;->removeMessages(I)V

    .line 59
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarClockController;->mH:Lcom/miui/launcher/utils/StatusBarClockController$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/launcher/utils/StatusBarClockController$H;->removeMessages(I)V

    .line 61
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarClockController;->mH:Lcom/miui/launcher/utils/StatusBarClockController$H;

    xor-int/2addr p1, v1

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
