.class public final enum Lio/branch/search/t4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/t4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/branch/search/t4;

.field public static final enum b:Lio/branch/search/t4;

.field public static final enum c:Lio/branch/search/t4;

.field public static final enum d:Lio/branch/search/t4;

.field public static final synthetic e:[Lio/branch/search/t4;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lio/branch/search/t4;

    new-instance v1, Lio/branch/search/t4;

    const/4 v2, 0x0

    const-string v3, "LocalSearch"

    invoke-direct {v1, v3, v2}, Lio/branch/search/t4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/t4;->a:Lio/branch/search/t4;

    aput-object v1, v0, v2

    new-instance v1, Lio/branch/search/t4;

    const/4 v2, 0x1

    const-string v3, "RemoteSearch"

    invoke-direct {v1, v3, v2}, Lio/branch/search/t4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/t4;->b:Lio/branch/search/t4;

    aput-object v1, v0, v2

    new-instance v1, Lio/branch/search/t4;

    const/4 v2, 0x2

    const-string v3, "ZeroState"

    invoke-direct {v1, v3, v2}, Lio/branch/search/t4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/t4;->c:Lio/branch/search/t4;

    aput-object v1, v0, v2

    new-instance v1, Lio/branch/search/t4;

    const/4 v2, 0x3

    const-string v3, "AppStore"

    invoke-direct {v1, v3, v2}, Lio/branch/search/t4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/t4;->d:Lio/branch/search/t4;

    aput-object v1, v0, v2

    sput-object v0, Lio/branch/search/t4;->e:[Lio/branch/search/t4;

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

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/t4;
    .locals 1

    const-class v0, Lio/branch/search/t4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/t4;

    return-object p0
.end method

.method public static values()[Lio/branch/search/t4;
    .locals 1

    sget-object v0, Lio/branch/search/t4;->e:[Lio/branch/search/t4;

    invoke-virtual {v0}, [Lio/branch/search/t4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/t4;

    return-object v0
.end method
