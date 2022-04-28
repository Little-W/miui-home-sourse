.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TJdwyJAuGkjoFVVlVgy56DMOH40;
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

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TJdwyJAuGkjoFVVlVgy56DMOH40;->f$0:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TJdwyJAuGkjoFVVlVgy56DMOH40;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TJdwyJAuGkjoFVVlVgy56DMOH40;->f$0:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TJdwyJAuGkjoFVVlVgy56DMOH40;->f$1:F

    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startOpeningWindowAnimators$1(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;F)V

    return-void
.end method
