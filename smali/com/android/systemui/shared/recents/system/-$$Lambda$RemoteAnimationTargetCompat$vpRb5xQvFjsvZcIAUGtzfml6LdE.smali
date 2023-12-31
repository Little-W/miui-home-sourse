.class public final synthetic Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationTargetCompat$vpRb5xQvFjsvZcIAUGtzfml6LdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationTargetCompat$vpRb5xQvFjsvZcIAUGtzfml6LdE;->f$0:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationTargetCompat$vpRb5xQvFjsvZcIAUGtzfml6LdE;->f$0:Z

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->lambda$wrapNonAppsForCompat$1(ZLandroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0
.end method
