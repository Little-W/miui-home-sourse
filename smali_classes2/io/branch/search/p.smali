.class public final Lio/branch/search/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/p$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/p$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/p$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/p;->Companion:Lio/branch/search/p$a;

    return-void
.end method

.method public static final a(Lorg/json/JSONObject;Lio/branch/search/BranchAnalytics$c;Lio/branch/search/l;Lio/branch/search/d5;)V
    .locals 1

    sget-object v0, Lio/branch/search/p;->Companion:Lio/branch/search/p$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/branch/search/p$a;->a(Lorg/json/JSONObject;Lio/branch/search/BranchAnalytics$c;Lio/branch/search/l;Lio/branch/search/d5;)V

    return-void
.end method

.method public static final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/branch/search/p;->Companion:Lio/branch/search/p$a;

    invoke-virtual {v0, p0, p1, p2}, Lio/branch/search/p$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
