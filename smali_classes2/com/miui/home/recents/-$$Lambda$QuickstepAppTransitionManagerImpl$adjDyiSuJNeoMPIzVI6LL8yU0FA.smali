.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$adjDyiSuJNeoMPIzVI6LL8yU0FA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$adjDyiSuJNeoMPIzVI6LL8yU0FA;->f$0:Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$adjDyiSuJNeoMPIzVI6LL8yU0FA;->f$0:Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$findClosingWidgetView$7(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
