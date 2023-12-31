.class public final enum Lio/branch/search/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/branch/search/k;

.field public static final enum b:Lio/branch/search/k;

.field public static final enum c:Lio/branch/search/k;

.field public static final enum d:Lio/branch/search/k;

.field public static final enum e:Lio/branch/search/k;

.field public static final enum f:Lio/branch/search/k;

.field public static final enum g:Lio/branch/search/k;

.field public static final enum h:Lio/branch/search/k;

.field public static final enum i:Lio/branch/search/k;

.field public static final enum j:Lio/branch/search/k;

.field public static final synthetic k:[Lio/branch/search/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/branch/search/k;

    const/4 v1, 0x0

    const-string v2, "LOCAL_ZERO_STATE_LINK"

    invoke-direct {v0, v2, v1}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/search/k;->a:Lio/branch/search/k;

    new-instance v2, Lio/branch/search/k;

    const/4 v3, 0x1

    const-string v4, "LOCAL_ZERO_STATE_AD"

    invoke-direct {v2, v4, v3}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/branch/search/k;->b:Lio/branch/search/k;

    new-instance v4, Lio/branch/search/k;

    const/4 v5, 0x2

    const-string v6, "LOCAL_SEARCH_LINK"

    invoke-direct {v4, v6, v5}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/branch/search/k;->c:Lio/branch/search/k;

    new-instance v6, Lio/branch/search/k;

    const/4 v7, 0x3

    const-string v8, "LOCAL_SEARCH_AD"

    invoke-direct {v6, v8, v7}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/branch/search/k;->d:Lio/branch/search/k;

    new-instance v8, Lio/branch/search/k;

    const/4 v9, 0x4

    const-string v10, "REMOTE_SEARCH"

    invoke-direct {v8, v10, v9}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lio/branch/search/k;->e:Lio/branch/search/k;

    new-instance v10, Lio/branch/search/k;

    const/4 v11, 0x5

    const-string v12, "APP_STORE_SEARCH"

    invoke-direct {v10, v12, v11}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lio/branch/search/k;->f:Lio/branch/search/k;

    new-instance v12, Lio/branch/search/k;

    const/4 v13, 0x6

    const-string v14, "LOCAL_ZERO_STATE_LINK_PRELOAD"

    invoke-direct {v12, v14, v13}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lio/branch/search/k;->g:Lio/branch/search/k;

    new-instance v14, Lio/branch/search/k;

    const/4 v15, 0x7

    const-string v13, "LOCAL_ZERO_STATE_AD_PRELOAD"

    invoke-direct {v14, v13, v15}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/branch/search/k;->h:Lio/branch/search/k;

    new-instance v13, Lio/branch/search/k;

    const/16 v15, 0x8

    const-string v11, "LOCAL_SEARCH_LINK_PRELOAD"

    invoke-direct {v13, v11, v15}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/branch/search/k;->i:Lio/branch/search/k;

    new-instance v11, Lio/branch/search/k;

    const/16 v15, 0x9

    const-string v9, "LOCAL_SEARCH_AD_PRELOAD"

    invoke-direct {v11, v9, v15}, Lio/branch/search/k;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/branch/search/k;->j:Lio/branch/search/k;

    const/16 v9, 0xa

    new-array v9, v9, [Lio/branch/search/k;

    aput-object v0, v9, v1

    aput-object v2, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    const/4 v0, 0x7

    aput-object v14, v9, v0

    const/16 v0, 0x8

    aput-object v13, v9, v0

    aput-object v11, v9, v15

    sput-object v9, Lio/branch/search/k;->k:[Lio/branch/search/k;

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

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/k;
    .locals 1

    const-class v0, Lio/branch/search/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/k;

    return-object p0
.end method

.method public static values()[Lio/branch/search/k;
    .locals 1

    sget-object v0, Lio/branch/search/k;->k:[Lio/branch/search/k;

    invoke-virtual {v0}, [Lio/branch/search/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/k;

    return-object v0
.end method
