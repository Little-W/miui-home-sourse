.class public final Lio/branch/search/n2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/n2$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/n2$a;

.field public static final a:Ljava/lang/String; = "SELECT\n  *,\n  MIN(weight) OVER (PARTITION BY transaction_group_id) AS lowest_weight_in_group\nFROM scheduled_queries\nORDER BY\n  lowest_weight_in_group ASC,\n  transaction_group_id ASC,\n  weight ASC"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/n2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/n2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/n2;->Companion:Lio/branch/search/n2$a;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/branch/search/n2;->a:Ljava/lang/String;

    return-object v0
.end method
