.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$GRMm13lcoXjOM90tiWPcPVUkw_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field private final synthetic f$1:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$GRMm13lcoXjOM90tiWPcPVUkw_k;->f$0:Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$GRMm13lcoXjOM90tiWPcPVUkw_k;->f$1:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$GRMm13lcoXjOM90tiWPcPVUkw_k;->f$0:Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$GRMm13lcoXjOM90tiWPcPVUkw_k;->f$1:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$getClosingShortcutIcon$533(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    return-object v0
.end method
