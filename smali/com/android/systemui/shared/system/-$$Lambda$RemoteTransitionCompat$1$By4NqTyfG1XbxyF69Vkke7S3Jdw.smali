.class public final synthetic Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$By4NqTyfG1XbxyF69Vkke7S3Jdw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/window/IRemoteTransitionFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$By4NqTyfG1XbxyF69Vkke7S3Jdw;->f$0:Landroid/window/IRemoteTransitionFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$By4NqTyfG1XbxyF69Vkke7S3Jdw;->f$0:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-static {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->lambda$startAnimation$0(Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method
