.class public final enum Lio/branch/search/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lio/branch/search/j;

.field public static final enum c:Lio/branch/search/j;

.field public static final enum d:Lio/branch/search/j;

.field public static final synthetic e:[Lio/branch/search/j;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lio/branch/search/j;

    const-string v1, "QUERY_HINT_RESULTS"

    const-string v2, "query_hint"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lio/branch/search/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/branch/search/j;->b:Lio/branch/search/j;

    new-instance v1, Lio/branch/search/j;

    const-string v2, "AUTOSUGGEST_RESULTS"

    const-string v4, "autosuggest"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v4}, Lio/branch/search/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/branch/search/j;->c:Lio/branch/search/j;

    new-instance v2, Lio/branch/search/j;

    const-string v4, "UNSPECIFIED"

    const-string v6, "unspecified"

    const/4 v7, 0x2

    invoke-direct {v2, v4, v7, v6}, Lio/branch/search/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/search/j;->d:Lio/branch/search/j;

    const/4 v4, 0x3

    new-array v4, v4, [Lio/branch/search/j;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lio/branch/search/j;->e:[Lio/branch/search/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/branch/search/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/j;
    .locals 1

    const-class v0, Lio/branch/search/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/j;

    return-object p0
.end method

.method public static values()[Lio/branch/search/j;
    .locals 1

    sget-object v0, Lio/branch/search/j;->e:[Lio/branch/search/j;

    invoke-virtual {v0}, [Lio/branch/search/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/j;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/j;->a:Ljava/lang/String;

    return-object v0
.end method
