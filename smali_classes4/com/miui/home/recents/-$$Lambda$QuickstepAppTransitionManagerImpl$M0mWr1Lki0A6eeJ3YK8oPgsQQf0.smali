.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$M0mWr1Lki0A6eeJ3YK8oPgsQQf0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$M0mWr1Lki0A6eeJ3YK8oPgsQQf0;->f$0:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$M0mWr1Lki0A6eeJ3YK8oPgsQQf0;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$M0mWr1Lki0A6eeJ3YK8oPgsQQf0;->f$0:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget p0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$M0mWr1Lki0A6eeJ3YK8oPgsQQf0;->f$1:F

    invoke-static {v0, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$openAnimUpdate$5(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;F)V

    return-void
.end method
