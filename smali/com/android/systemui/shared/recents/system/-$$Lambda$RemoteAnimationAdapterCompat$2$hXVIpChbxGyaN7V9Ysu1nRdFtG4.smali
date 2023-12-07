.class public final synthetic Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$hXVIpChbxGyaN7V9Ysu1nRdFtG4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;

.field private final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$hXVIpChbxGyaN7V9Ysu1nRdFtG4;->f$0:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$hXVIpChbxGyaN7V9Ysu1nRdFtG4;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$hXVIpChbxGyaN7V9Ysu1nRdFtG4;->f$0:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$hXVIpChbxGyaN7V9Ysu1nRdFtG4;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->lambda$startAnimation$0$RemoteAnimationAdapterCompat$2(Landroid/os/IBinder;)V

    return-void
.end method
