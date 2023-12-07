.class public final enum Lio/branch/search/q0$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/q0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/branch/search/q0$a;

.field public static final enum b:Lio/branch/search/q0$a;

.field public static final synthetic c:[Lio/branch/search/q0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/branch/search/q0$a;

    const/4 v1, 0x0

    const-string v2, "DEBUG_INFO_IN_LOCAL_RESULT_NAMES"

    invoke-direct {v0, v2, v1}, Lio/branch/search/q0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/search/q0$a;->a:Lio/branch/search/q0$a;

    new-instance v2, Lio/branch/search/q0$a;

    const/4 v3, 0x1

    const-string v4, "FORCE_LOCAL_SEARCH_FALLBACK"

    invoke-direct {v2, v4, v3}, Lio/branch/search/q0$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/branch/search/q0$a;->b:Lio/branch/search/q0$a;

    const/4 v4, 0x2

    new-array v4, v4, [Lio/branch/search/q0$a;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lio/branch/search/q0$a;->c:[Lio/branch/search/q0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/q0$a;
    .locals 1

    const-class v0, Lio/branch/search/q0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/q0$a;

    return-object p0
.end method

.method public static values()[Lio/branch/search/q0$a;
    .locals 1

    sget-object v0, Lio/branch/search/q0$a;->c:[Lio/branch/search/q0$a;

    invoke-virtual {v0}, [Lio/branch/search/q0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/q0$a;

    return-object v0
.end method
