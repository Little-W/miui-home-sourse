.class public Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;
.super Landroidx/work/impl/background/systemalarm/ConstraintProxy;
.source "ConstraintProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/systemalarm/ConstraintProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkStateProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy$_lancet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/ConstraintProxy;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private bridge synthetic onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 61
    invoke-super {p0, p1, p2}, Landroidx/work/impl/background/systemalarm/ConstraintProxy;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
