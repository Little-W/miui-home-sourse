.class public final synthetic Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$wqT07_vMEPJeJvRo1WFPGWYubDw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/LauncherAnimationRunner;

.field private final synthetic f$1:Ljava/lang/Runnable;

.field private final synthetic f$2:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/LauncherAnimationRunner;Ljava/lang/Runnable;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$wqT07_vMEPJeJvRo1WFPGWYubDw;->f$0:Lcom/miui/home/recents/LauncherAnimationRunner;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$wqT07_vMEPJeJvRo1WFPGWYubDw;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$wqT07_vMEPJeJvRo1WFPGWYubDw;->f$2:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$wqT07_vMEPJeJvRo1WFPGWYubDw;->f$0:Lcom/miui/home/recents/LauncherAnimationRunner;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$wqT07_vMEPJeJvRo1WFPGWYubDw;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$wqT07_vMEPJeJvRo1WFPGWYubDw;->f$2:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/LauncherAnimationRunner;->lambda$onAnimationStart$326(Lcom/miui/home/recents/LauncherAnimationRunner;Ljava/lang/Runnable;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    return-void
.end method
