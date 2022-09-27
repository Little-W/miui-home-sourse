.class public final synthetic Lcom/miui/home/recents/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$-A5JQ7fECQOy4rJRJG94ONEgRas;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RemoteAnimationProvider;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$-A5JQ7fECQOy4rJRJG94ONEgRas;->f$0:Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;

    return-void
.end method


# virtual methods
.method public final createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$-A5JQ7fECQOy4rJRJG94ONEgRas;->f$0:Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;

    invoke-static {v0, p1}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->lambda$-A5JQ7fECQOy4rJRJG94ONEgRas(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method
