.class public interface abstract Lcom/miui/home/recents/util/RemoteAnimationProvider;
.super Ljava/lang/Object;
.source "RemoteAnimationProvider.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static getLayer(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)I
    .locals 1

    .line 89
    iget v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v0, p1, :cond_0

    const p1, 0x2fb7ba90

    .line 90
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    add-int/2addr p0, p1

    goto :goto_0

    .line 91
    :cond_0
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
.end method

.method public toActivityOptions(Landroid/os/Handler;J)Landroid/app/ActivityOptions;
    .locals 6

    .line 40
    new-instance v1, Lcom/miui/home/recents/util/RemoteAnimationProvider$1;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Lcom/miui/home/recents/util/RemoteAnimationProvider$1;-><init>(Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/os/Handler;Z)V

    .line 63
    new-instance p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V

    .line 64
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getRemoteTransition()Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    move-result-object p1

    .line 65
    invoke-static {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;Lcom/android/systemui/shared/system/RemoteTransitionCompat;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method
