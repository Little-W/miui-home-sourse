.class public final synthetic Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$Cu0wOoGXbvGzEhedNS4Zq8UJwmQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbHandler;


# instance fields
.field private final synthetic f$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$Cu0wOoGXbvGzEhedNS4Zq8UJwmQ;->f$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    return-void
.end method


# virtual methods
.method public final handleBreadcrumb(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$Cu0wOoGXbvGzEhedNS4Zq8UJwmQ;->f$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->log(Ljava/lang/String;)V

    return-void
.end method
