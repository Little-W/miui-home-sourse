.class public final synthetic Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$1$cd-KnOQ7y7OslEG26u4YtYz_suE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;

.field private final synthetic f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field private final synthetic f$2:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$1$cd-KnOQ7y7OslEG26u4YtYz_suE;->f$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$1$cd-KnOQ7y7OslEG26u4YtYz_suE;->f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$1$cd-KnOQ7y7OslEG26u4YtYz_suE;->f$2:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$1$cd-KnOQ7y7OslEG26u4YtYz_suE;->f$0:Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$1$cd-KnOQ7y7OslEG26u4YtYz_suE;->f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$LauncherAppTransitionManagerImpl$1$cd-KnOQ7y7OslEG26u4YtYz_suE;->f$2:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl$1;->lambda$onAnimationEnd$0$LauncherAppTransitionManagerImpl$1([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
