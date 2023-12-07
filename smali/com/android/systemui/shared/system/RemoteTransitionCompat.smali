.class public Lcom/android/systemui/shared/system/RemoteTransitionCompat;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteTransitionCompat"


# instance fields
.field private mWrapped:Landroid/window/RemoteTransition;


# direct methods
.method public constructor <init>(Landroid/window/RemoteTransition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mWrapped:Landroid/window/RemoteTransition;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Ljava/util/concurrent/Executor;Landroid/content/ContextWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->newRemoteTransitionForRunner(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Ljava/util/concurrent/Executor;Landroid/content/ContextWrapper;)Landroid/window/RemoteTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mWrapped:Landroid/window/RemoteTransition;

    return-void
.end method

.method public static newRemoteTransitionForRunner(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Ljava/util/concurrent/Executor;Landroid/content/ContextWrapper;)Landroid/window/RemoteTransition;
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;)V

    invoke-static {p2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getIApplicationThread(Landroid/content/ContextWrapper;)Landroid/app/IApplicationThread;

    move-result-object p0

    const-string p1, "Recents"

    invoke-static {v0, p0, p1}, Lcom/android/hideapi/RemoteTransitionExpose;->newInstance(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/window/RemoteTransition;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getWrapped()Landroid/window/RemoteTransition;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mWrapped:Landroid/window/RemoteTransition;

    return-object p0
.end method
