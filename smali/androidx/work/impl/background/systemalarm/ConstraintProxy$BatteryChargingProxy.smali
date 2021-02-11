.class public Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;
.super Landroidx/work/impl/background/systemalarm/ConstraintProxy;
.source "ConstraintProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/systemalarm/ConstraintProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryChargingProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy$_lancet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/ConstraintProxy;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private bridge synthetic onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/work/impl/background/systemalarm/ConstraintProxy;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
