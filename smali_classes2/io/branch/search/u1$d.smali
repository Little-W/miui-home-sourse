.class public final enum Lio/branch/search/u1$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/u1$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/branch/search/u1$d;

.field public static final enum b:Lio/branch/search/u1$d;

.field public static final enum c:Lio/branch/search/u1$d;

.field public static final enum d:Lio/branch/search/u1$d;

.field public static final enum e:Lio/branch/search/u1$d;

.field public static final enum f:Lio/branch/search/u1$d;

.field public static final synthetic g:[Lio/branch/search/u1$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lio/branch/search/u1$d;

    const-string v1, "local_search"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/search/u1$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/search/u1$d;->a:Lio/branch/search/u1$d;

    new-instance v1, Lio/branch/search/u1$d;

    const-string v3, "zero_state"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/branch/search/u1$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/u1$d;->b:Lio/branch/search/u1$d;

    new-instance v3, Lio/branch/search/u1$d;

    const-string v5, "query_hint"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/branch/search/u1$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/branch/search/u1$d;->c:Lio/branch/search/u1$d;

    new-instance v5, Lio/branch/search/u1$d;

    const-string v7, "ads_local_search"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/branch/search/u1$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/branch/search/u1$d;->d:Lio/branch/search/u1$d;

    new-instance v7, Lio/branch/search/u1$d;

    const-string v9, "ads_zero_state"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/branch/search/u1$d;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/branch/search/u1$d;->e:Lio/branch/search/u1$d;

    new-instance v9, Lio/branch/search/u1$d;

    const-string v11, "app_store"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/branch/search/u1$d;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/branch/search/u1$d;->f:Lio/branch/search/u1$d;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/branch/search/u1$d;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lio/branch/search/u1$d;->g:[Lio/branch/search/u1$d;

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

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/u1$d;
    .locals 1

    const-class v0, Lio/branch/search/u1$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/u1$d;

    return-object p0
.end method

.method public static values()[Lio/branch/search/u1$d;
    .locals 1

    sget-object v0, Lio/branch/search/u1$d;->g:[Lio/branch/search/u1$d;

    invoke-virtual {v0}, [Lio/branch/search/u1$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/u1$d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setup_teardown_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
