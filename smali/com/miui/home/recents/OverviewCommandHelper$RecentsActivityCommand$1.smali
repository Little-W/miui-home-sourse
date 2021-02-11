.class Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OverviewCommandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$1;->this$1:Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$1;->this$1:Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;

    invoke-virtual {p1}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->onTransitionComplete()V

    return-void
.end method
