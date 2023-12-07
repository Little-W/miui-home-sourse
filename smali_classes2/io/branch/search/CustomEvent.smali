.class public Lio/branch/search/CustomEvent;
.super Lio/branch/search/AnalyticsEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "custom_events"

    invoke-direct {p0, v0}, Lio/branch/search/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;
    .locals 1

    const-string v0, "CustomEvent"

    invoke-virtual {p0, v0, p1, p2}, Lio/branch/search/AnalyticsEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
