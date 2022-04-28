.class public final enum Lio/branch/search/BranchSearchError$ERR_CODE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchSearchError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ERR_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/BranchSearchError$ERR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum b:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum c:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum d:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum e:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum f:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum g:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum h:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum i:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum j:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum k:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum l:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum m:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum n:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum o:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final enum p:Lio/branch/search/BranchSearchError$ERR_CODE;

.field public static final synthetic q:[Lio/branch/search/BranchSearchError$ERR_CODE;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v1, "UNKNOWN_ERR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v1, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v3, "BAD_REQUEST_ERR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/BranchSearchError$ERR_CODE;->b:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v3, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v5, "UNAUTHORIZED_ERR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/branch/search/BranchSearchError$ERR_CODE;->c:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v5, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v7, "NOT_SUPPORTED_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/branch/search/BranchSearchError$ERR_CODE;->d:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v7, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v9, "NO_INTERNET_PERMISSION_ERR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/branch/search/BranchSearchError$ERR_CODE;->e:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v9, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v11, "BRANCH_NO_CONNECTIVITY_ERR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/branch/search/BranchSearchError$ERR_CODE;->f:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v11, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v13, "INTERNAL_SERVER_ERR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/branch/search/BranchSearchError$ERR_CODE;->g:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v13, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v15, "REQUEST_TIMED_OUT_ERR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/branch/search/BranchSearchError$ERR_CODE;->h:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v15, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v14, "REQUEST_CANCELED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/branch/search/BranchSearchError$ERR_CODE;->i:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v14, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v12, "SERVICE_DISABLED_ERR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/branch/search/BranchSearchError$ERR_CODE;->j:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v12, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v10, "POST_PROCESSING_ERR"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lio/branch/search/BranchSearchError$ERR_CODE;->k:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v10, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v8, "ROUTING_ERR_UNABLE_TO_OPEN_APP"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lio/branch/search/BranchSearchError$ERR_CODE;->l:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v8, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v6, "ROUTING_ERR_UNABLE_TO_OPEN_WEB_URL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lio/branch/search/BranchSearchError$ERR_CODE;->m:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v6, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v4, "ROUTING_ERR_UNABLE_TO_OPEN_PS"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/branch/search/BranchSearchError$ERR_CODE;->n:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v4, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v2, "ROUTING_ERR_UNABLE_TO_COMPLETE_ACTION"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/branch/search/BranchSearchError$ERR_CODE;->o:Lio/branch/search/BranchSearchError$ERR_CODE;

    new-instance v2, Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v6, "OPTED_OUT_OF_TRACKING"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lio/branch/search/BranchSearchError$ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/branch/search/BranchSearchError$ERR_CODE;->p:Lio/branch/search/BranchSearchError$ERR_CODE;

    const/16 v4, 0x10

    new-array v4, v4, [Lio/branch/search/BranchSearchError$ERR_CODE;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v2, v4, v0

    sput-object v4, Lio/branch/search/BranchSearchError$ERR_CODE;->q:[Lio/branch/search/BranchSearchError$ERR_CODE;

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

.method public static a(I)Lio/branch/search/BranchSearchError$ERR_CODE;
    .locals 1

    const/16 v0, 0x190

    if-ne p0, v0, :cond_0

    sget-object p0, Lio/branch/search/BranchSearchError$ERR_CODE;->b:Lio/branch/search/BranchSearchError$ERR_CODE;

    return-object p0

    :cond_0
    const/16 v0, 0x191

    if-ne p0, v0, :cond_1

    sget-object p0, Lio/branch/search/BranchSearchError$ERR_CODE;->c:Lio/branch/search/BranchSearchError$ERR_CODE;

    return-object p0

    :cond_1
    const/16 v0, 0x194

    if-ne p0, v0, :cond_2

    sget-object p0, Lio/branch/search/BranchSearchError$ERR_CODE;->d:Lio/branch/search/BranchSearchError$ERR_CODE;

    return-object p0

    :cond_2
    sget-object p0, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/BranchSearchError$ERR_CODE;
    .locals 1

    const-class v0, Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchSearchError$ERR_CODE;

    return-object p0
.end method

.method public static values()[Lio/branch/search/BranchSearchError$ERR_CODE;
    .locals 1

    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->q:[Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-virtual {v0}, [Lio/branch/search/BranchSearchError$ERR_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/BranchSearchError$ERR_CODE;

    return-object v0
.end method
