.class public Lcom/miui/launcher/utils/StatusBarController;
.super Ljava/lang/Object;
.source "StatusBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/utils/StatusBarController$H;
    }
.end annotation


# static fields
.field public static final DISABLE_BACK:I = 0x400000

.field public static final DISABLE_EXPAND:I = 0x10000

.field public static final DISABLE_HOME:I = 0x200000

.field public static final DISABLE_RECENT:I = 0x1000000

.field public static final HIDE_CLOCK:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "StatusBarController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisableFlag:I

.field private mH:Lcom/miui/launcher/utils/StatusBarController$H;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/miui/launcher/utils/StatusBarController;->mDisableFlag:I

    .line 24
    iput-object p1, p0, Lcom/miui/launcher/utils/StatusBarController;->mContext:Landroid/content/Context;

    .line 25
    new-instance p1, Lcom/miui/launcher/utils/StatusBarController$H;

    invoke-direct {p1, p0, p2}, Lcom/miui/launcher/utils/StatusBarController$H;-><init>(Lcom/miui/launcher/utils/StatusBarController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/launcher/utils/StatusBarController;->mH:Lcom/miui/launcher/utils/StatusBarController$H;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/launcher/utils/StatusBarController;)Landroid/app/StatusBarManager;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/launcher/utils/StatusBarController;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/launcher/utils/StatusBarController;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/miui/launcher/utils/StatusBarController;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/launcher/utils/StatusBarController;)Landroid/content/Context;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/launcher/utils/StatusBarController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/launcher/utils/StatusBarController;IZ)I
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/utils/StatusBarController;->getFlagAfterAddOrRemoveFlag(IZ)I

    move-result p0

    return p0
.end method

.method private getFlagAfterAddOrRemoveFlag(IZ)I
    .locals 1

    .line 51
    iget v0, p0, Lcom/miui/launcher/utils/StatusBarController;->mDisableFlag:I

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    .line 52
    :goto_0
    iput p1, p0, Lcom/miui/launcher/utils/StatusBarController;->mDisableFlag:I

    .line 53
    iget p1, p0, Lcom/miui/launcher/utils/StatusBarController;->mDisableFlag:I

    return p1
.end method


# virtual methods
.method public disableExpand(Z)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarController;->mH:Lcom/miui/launcher/utils/StatusBarController$H;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/miui/launcher/utils/StatusBarController$H;->removeMessages(I)V

    .line 58
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarController;->mH:Lcom/miui/launcher/utils/StatusBarController$H;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public hideNavBarButton(Z)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarController;->mH:Lcom/miui/launcher/utils/StatusBarController$H;

    const/high16 v1, 0x1600000

    invoke-virtual {v0, v1}, Lcom/miui/launcher/utils/StatusBarController$H;->removeMessages(I)V

    .line 69
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarController;->mH:Lcom/miui/launcher/utils/StatusBarController$H;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showOrHideClock(ZLjava/lang/Runnable;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarController;->mH:Lcom/miui/launcher/utils/StatusBarController$H;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Lcom/miui/launcher/utils/StatusBarController$H;->removeMessages(I)V

    .line 63
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarController;->mH:Lcom/miui/launcher/utils/StatusBarController$H;

    xor-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
