.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$9vMAJhkNtDyCREAjMQyYOvdufcY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;

.field private final synthetic f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$2:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$9vMAJhkNtDyCREAjMQyYOvdufcY;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$9vMAJhkNtDyCREAjMQyYOvdufcY;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$9vMAJhkNtDyCREAjMQyYOvdufcY;->f$2:Lcom/miui/home/launcher/Launcher;

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$9vMAJhkNtDyCREAjMQyYOvdufcY;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$9vMAJhkNtDyCREAjMQyYOvdufcY;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$9vMAJhkNtDyCREAjMQyYOvdufcY;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$9vMAJhkNtDyCREAjMQyYOvdufcY;->f$2:Lcom/miui/home/launcher/Launcher;

    iget-object v3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$9vMAJhkNtDyCREAjMQyYOvdufcY;->f$3:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->lambda$onAnimationEnd$1(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    return-void
.end method
