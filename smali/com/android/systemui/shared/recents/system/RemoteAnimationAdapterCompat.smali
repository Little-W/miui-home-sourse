.class public Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;
.super Ljava/lang/Object;
.source "RemoteAnimationAdapterCompat.java"


# instance fields
.field private final mWrapped:Landroid/view/RemoteAnimationAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V
    .locals 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v6, Landroid/view/RemoteAnimationAdapter;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->wrapRemoteAnimationRunner(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;

    move-result-object v1

    move-object v0, v6

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    iput-object v6, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->mWrapped:Landroid/view/RemoteAnimationAdapter;

    return-void
.end method

.method private static wrapRemoteAnimationRunner(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;
    .locals 1

    .line 45
    new-instance v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)V

    return-object v0
.end method


# virtual methods
.method getWrapped()Landroid/view/RemoteAnimationAdapter;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->mWrapped:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method
