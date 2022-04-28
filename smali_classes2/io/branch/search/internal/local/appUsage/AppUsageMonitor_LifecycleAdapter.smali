.class public Lio/branch/search/internal/local/appUsage/AppUsageMonitor_LifecycleAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/GeneratedAdapter;


# instance fields
.field public final a:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor_LifecycleAdapter;->a:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    return-void
.end method


# virtual methods
.method public callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_1

    return-void

    :cond_1
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p3, :cond_3

    if-eqz v0, :cond_2

    const-string p2, "onMoveToForeground"

    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/MethodCallsLogger;->approveCall(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor_LifecycleAdapter;->a:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    invoke-virtual {p1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->onMoveToForeground()V

    :cond_3
    return-void
.end method
